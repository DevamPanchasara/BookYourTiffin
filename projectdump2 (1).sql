/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.0.27-community-nt : Database - project_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `area_table` */

CREATE TABLE `area_table` (
  `id` int(11) NOT NULL,
  `area_description` varchar(255) default NULL,
  `area_name` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `city_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKiyvki7q9vcl92na28525jxpqr` (`city_id`),
  CONSTRAINT `FKiyvki7q9vcl92na28525jxpqr` FOREIGN KEY (`city_id`) REFERENCES `city_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `area_table` */

insert  into `area_table`(`id`,`area_description`,`area_name`,`status`,`city_id`) values (239,'Naranpura','Naranpura','\0',214),(244,'Satellite With average property cost at Rs 11,400 per sq ft, Satellite is a sought-after destination in the city.\r\n','Satellite','',214),(245,'Naranpura is a residential area. A railway line passes by this place to form its boundary. \r\n','Naranpura','',214),(246,'Nestled on the Tapi River, Adjan is a popular residential location in the western part of the city.\r\n','Adjan','',215),(247,'Busy Varachha is a down-to-earth commercial district and the citys principal hub for diamond cutting and polishing.\r\n','Varachha','',215),(248,'Home to the famous Homai Vyarawalla Udyan, Chhani Jakat Naka is a residential locality located in the north-western parts of Vadodara. \r\n','Chhani Jakat','',216),(249,'Akota is an urban area in the western side of Vadodara City, in the state of Gujarat, in India','Akota','',215),(250,'The village Ambaliya falls in Junagadh district situated in Gujarat state.','Ambaliya','',217),(251,'Badalpur is a Village in Junagadh Taluka in Junagadh District of Gujarat State, India\r\n','Badalpur','',217),(252,'Amleshwar is a Village in Bharuch Taluka in Bharuch District of Gujarat State, India. It is located 19 KM towards west from District head quarters Bharuch.\r\n','Amleshwar','',218),(253,'Bholav is a Locality in Bharuch City in Gujarat State.It is near to arabian sea. \r\n','Bholav','',218),(506,'Shastrinagar is near to 132 foot ringroad.','Shastrinagar','\0',214);

/*Table structure for table `city_table` */

CREATE TABLE `city_table` (
  `id` int(11) NOT NULL,
  `city_description` varchar(255) default NULL,
  `city_name` varchar(255) default NULL,
  `status` bit(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `city_table` */

insert  into `city_table`(`id`,`city_description`,`city_name`,`status`) values (214,'Ahmedabad, in western India, is the largest city in the state of Gujarat. The Sabarmati River runs through its center. ','Ahmedabad',''),(215,'Surat is a large city beside the Tapi River in the west Indian state of Gujarat. ','Surat',''),(216,'Vadodara also known as Baroda, is the third largest city in the Indian state of Gujarat.','Vadodara',''),(217,'Junagadh is a city in the western Indian state of Gujarat. Mahabat Maqbara is the huge 19th-century mausoleum of a local ruler.','Junagadh',''),(218,'Bharuch, formerly known as Broach, is a city at the mouth of the river Narmada in Gujarat in western India.','Bharuch','');

/*Table structure for table `complain_table` */

CREATE TABLE `complain_table` (
  `id` int(11) NOT NULL,
  `complain_datatime` varchar(255) default NULL,
  `complain_description` varchar(255) default NULL,
  `complain_replay` varchar(255) default NULL,
  `complain_status` varchar(255) default NULL,
  `complain_subject` varchar(255) default NULL,
  `file_name` varchar(255) default NULL,
  `file_path` varchar(255) default NULL,
  `replay_datatime` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `login_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKpuvmfhx47sdtqdmaxurxnlp6t` (`login_id`),
  CONSTRAINT `FKpuvmfhx47sdtqdmaxurxnlp6t` FOREIGN KEY (`login_id`) REFERENCES `login` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complain_table` */

insert  into `complain_table`(`id`,`complain_datatime`,`complain_description`,`complain_replay`,`complain_status`,`complain_subject`,`file_name`,`file_path`,`replay_datatime`,`status`,`login_id`) values (166,'12-4-2021 09:30:36','There\'s a problem in payment option. amount is debited from my bank account but still here it is showing for payment so please help me out here as soon as possible.','we will credit you amount to your account soon and we will solve this problem too.','Resolved','payment','screenshott.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\userComplain\\','12-4-2021 09:32:52','',9),(167,'12-4-2021 09:31:23','There\'s a missdelivery of tiffin i odered jain tiffin but i got regular tiffin.',NULL,'Pending','MissDelivery of Tiffin','screenshott.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\userComplain\\',NULL,'',9),(168,'12-4-2021 09:32:15','The tiffin which I received in that sabji was not edible and it is bad in taste.','Okay we will make sure that this won\'t happen again sorry for the inconvenience.','Resolved','Food is not edible','screenshott.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\userComplain\\','12-4-2021 09:33:22','',9),(185,'12-4-2021 12:31:53','Quality of food is not as expected','OK','Resolved','Quality of food','systemflow.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\userComplain\\','12-4-2021 12:32:25','',13),(187,'12-4-2021 01:29:50','I\'m not able to login here I have to try for 2 to 3 times then and then only I am able to login.','Okay I will solve this problem by my side.','Resolved','Login issue','loginissue.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\vendorComplain\\','12-4-2021 01:31:02','',2),(188,'12-4-2021 01:34:56','I\'m not getting proper orders from user side when I was preparing order it was cancelled by user','Sorry for your inconvenience I will solve that problem.','Resolved','Order problem','loginissue.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\vendorComplain\\','12-4-2021 02:29:19','',2),(189,'12-4-2021 01:37:31','There\'s a problem in website sometimes it\'s not working properly and i\'m not able to do work further.','Okay I will check backend code.','Resolved','Website ','loginissue.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\vendorComplain\\','12-4-2021 02:30:00','',5),(190,'12-4-2021 01:39:31','I accidently got someone else\'s order so please inform that vendor and solve this problem.','I will inform that user and check that problem.','Resolved','Order','loginissue.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\vendorComplain\\','12-4-2021 02:30:35','',5),(191,'12-4-2021 02:38:07','In tiffin menu I\'m not able to see my dishes I think I can see someone else\'s dishes so please do check.','Okay I will solve your problem.','Resolved','Tiffin-Menu','loginissue.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\vendorComplain\\','12-4-2021 02:49:40','',7),(192,'12-4-2021 02:40:19','I can not see the particular user name who gave me rating so please solve this problem.','Okay i will solve this soon.','Resolved','Rating','loginissue.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\vendorComplain\\','07-5-2021 02:40:47','',6),(193,'12-4-2021 02:44:18','I am not able to add dishes in my menu and can not delete existing dishes so kindly help me out on this matter.','Sorry for your inconvenience I will figure out this problem soon.','Resolved','Tiffin-Menu','loginissue.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\vendorComplain\\','12-4-2021 02:49:09','',6),(194,'12-4-2021 02:46:59','I am editing my profile but still it shows me the details which I edited last time.',NULL,'Pending','Edit profile','loginissue.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\vendorComplain\\',NULL,'',7),(202,'12-4-2021 03:21:45','There\'s a problem on website I am not able to order particular tiffin on your website please solve my problem',NULL,'Pending','Order','loginissue.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\userComplain\\',NULL,'',13),(203,'12-4-2021 03:23:42','There\'s issue on payment option I am not able to pay online and last time extra money got credited from my account please return that as soon as possible.',NULL,'Pending','payment','loginissue.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\userComplain\\',NULL,'',13);

/*Table structure for table `dish_table` */

CREATE TABLE `dish_table` (
  `id` int(11) NOT NULL,
  `dish_name` varchar(255) default NULL,
  `dishfile_name` varchar(255) default NULL,
  `dishfile_path` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `tiffin_menu_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKs2244669ljjt9dm2gv3rt52y1` (`tiffin_menu_id`),
  CONSTRAINT `FKs2244669ljjt9dm2gv3rt52y1` FOREIGN KEY (`tiffin_menu_id`) REFERENCES `tiffinmenu_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dish_table` */

insert  into `dish_table`(`id`,`dish_name`,`dishfile_name`,`dishfile_path`,`status`,`tiffin_menu_id`) values (7,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',6),(8,'Fafda-Jalebi','fafda-jalebi.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',6),(12,'Suji-Dhokla','suji-Dhokla.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',11),(14,'Gujarati-Daal','Gujarati-Daal.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',13),(15,'Rice','rice.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',13),(16,'Aloo Ki Sabji','Alookissabji.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',13),(17,'Chapati','chapati.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',13),(19,'Paneer Butter Masala','paneerbuttermasala.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',18),(20,'Naan','naan.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',18),(21,'Daal-Tadka','Daal Tadka.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',18),(22,'Jeera-Rice','jeera-rice.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',18),(62,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',61),(63,'Upma','upma.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',61),(65,'Khandvi','khandvi.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',64),(67,'Gujarati-Daal','Gujarati-Daal.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',66),(68,'Rice','rice.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',66),(69,'Bhindi ki sabji','Bhindi.jfif','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',66),(70,'Chapati','chapati.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',66),(72,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',71),(73,'Upma','upma.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',71),(75,'Gujarati-Daal','Gujarati-Daal.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',74),(76,'Rice','rice.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',74),(77,'Bhindi ki sabji','Bhindi.jfif','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',74),(78,'Chapati','chapati.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',74),(80,'Khichadi','khichadi.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',79),(81,'Kadhi','kadhi.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',79),(82,'Aloo Ki Sabji','Alookisabji.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',79),(83,'Bhakhari','bhakhari.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',79),(85,'Gujarati-Daal','Gujarati-Daal.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',84),(86,'Rice','rice.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',84),(87,'Bhindi ki sabji','bhindi.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',84),(88,'Chapati','chapati.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',84),(90,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',89),(91,'Idli Sambhar','Idli-sambhar.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',89),(93,'Khaman-Dhokla','Khaman-Dhokla.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',92),(95,'Gujarati-Daal','Gujarati-Daal.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',94),(96,'Rice','rice.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',94),(97,'Gobhi ki sabji','Gobhikisabji.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',94),(98,'Chapati','chapati.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',94),(100,'Aloo-Paratha','AlooParatha.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',99),(101,'Achar','Achar.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',99),(102,'Masala-Dahi','Dahi.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',99),(104,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',103),(105,'Poha','poha.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',103),(107,'Sev-Khamni','sev-khamni.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',106),(109,'Kadhi','kadhi.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',108),(110,'Rice','rice.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',108),(111,'Mag ki sabji','mag.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',108),(112,'Chapati','chapati.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',108),(114,'Manchurian','manchurian.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',113),(115,'Fried Rice','friedrice.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',113),(116,'Hakka Noodles','noodles.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',113),(118,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',117),(119,'Vegetable Sandwitch','sandwitch.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',117),(121,'Khichu','','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',120),(123,'Khichu','Khichu.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',122),(125,'Gujarati-Daal','Gujarati-Daal.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',124),(126,'Rice','rice.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',124),(127,'Mix Vegetable sabji','mix-vegetablesabji.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',124),(128,'Chapati','chapati.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',124),(130,'Chana','chana.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',129),(131,'Puri','puri.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',129),(132,'Buttermilk','buttermilk.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',129),(134,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',133),(135,'Masala Dosa','Masala-dosa.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',133),(137,'Thepla','thepla.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',136),(138,'Murabbo','mango-murrabo.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',136),(140,'Gujarati-Daal','Gujarati-Daal.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',139),(141,'Rice','rice.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',139),(142,'Gawar ki sabji','Gawarkisabji.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',139),(143,'Chapati','chapati.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',139),(145,'Kali-Daal','kali-daal.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',144),(146,'Jeera-rice','jeera-rice.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',144),(147,'Palak paneer','palak-paneer.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',144),(148,'Naan','naan.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',144),(150,'Tea/Coffee','teaorcoffe.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',149),(151,'Surati Locho','surti-locho.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',149),(153,'Batata-vada','batata-vada.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',152),(155,'Dhokadi','Dhokadi.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',154),(156,'Masala Paratha','masala-paratha.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',154),(157,'Rice','rice.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',154),(158,'Buttermilk','buttermilk.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',154),(160,'Sev-Tameta ki sabji','sev-tameta.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',159),(161,'Paratha','paratha.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',159),(162,'Buttermilk','buttermilk.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',159),(220,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',219),(221,'Dhokla','dhokla.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',219),(223,'Tea','Tea.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',222),(224,'Methi-Thepla','methithepla.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',222),(226,'Tea','Tea.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',225),(227,'Methi-Thepla','methithepla.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',225),(229,'Tea','Tea.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',228),(230,'Methi-Thepla','methithepla.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',228),(232,'Tea','Tea.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',231),(233,'Methi-Thepla','methithepla.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',231),(235,'Tea','Tea.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',234),(236,'Methi-Thepla','methithepla.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',234),(238,'Methi-Thepla','methithepla.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',237),(257,'Tea','Tea.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',256),(258,'Methi-Thepla','methithepla.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',256),(260,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',259),(261,'Vaghareli Idli','vaghareli_idli.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',259),(263,'Maggi','Maggi.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',262),(265,'Gujarati Daal','Gujarati-Daal1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',264),(266,'Rice','Rice1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',264),(267,'Aloo mater ki sabji','Aloo-mater.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',264),(268,'Chapati','chapati1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',264),(270,'Daal fry','Daal-Fry.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',269),(271,'Jeera rice','jeerarice2.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',269),(272,'Butter Naan','naan1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',269),(273,'Buttermilk','buttermilk1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',269),(275,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',274),(276,'Methi-thepla','Methi-thepla2.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',274),(278,'Garlic-bread','Garlicbread.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',277),(280,'Rajasthani Daal','Rajasthani-Daal.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',279),(281,'Rice','Rice1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',279),(282,'Gatta Curry','gattacury.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',279),(283,'Chapati','chapati1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',279),(285,'Italian Pizze','pizza2.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',284),(287,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',286),(288,'Handvo','Handvo.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',286),(290,'Pasta','pasta.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',289),(292,'Aam ras','aamras.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',291),(293,'Sookhi-Moong Daal','moondaal1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',291),(294,'Chapati','chapati1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',291),(296,'Vegetable Khichadi','vegkhichadi1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',295),(297,'Buttermilk','buttermilk1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',295),(299,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',298),(300,'Khaman-Dhokla','Khaman-DhoklA.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',298),(302,'Veg-Frankie','vegfrankie.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',301),(304,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',303),(305,'Khaman-Dhokla','Khaman-DhoklA.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',303),(307,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',306),(308,'Khaman-Dhokla','Khaman-DhoklA1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',306),(310,'Veg-Frankie','vegfrankie.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',309),(312,'Undhiyu','undhiyu2.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',311),(313,'Puri','puri.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',311),(314,'Kadhi','kadhi2.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',311),(315,'Rice','Rice1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',311),(317,'Veg-Paratha','stuffparatha.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',316),(318,'Masala-Dahi','masaladahi.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',316),(320,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',319),(321,'Fafda-Jalebi','fafdajalebi.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',319),(323,'Gujarati-Pudla','gujaratipudla.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',322),(325,'Vaal ki sabji','valkisabji.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',324),(326,'Chapati','chapati1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',324),(327,'Rice','Rice1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',324),(329,'Manchurian','manchurian.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',328),(330,'Vag Hakka Noodles','veghakkanoodles.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',328),(332,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',331),(333,'Bread Butter','breadbutter1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',331),(335,'Idada','Idada.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',334),(337,'Gujarati Daal','Gujarati-Daal1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',336),(338,'Rice','Rice1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',336),(339,'Patta-Gobhi ki sabji','pattagobhikisabji.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',336),(340,'Chapati','chapati1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',336),(342,'Pav-Bhaji','Pav-bhaji.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',341),(344,'Tea','Tea1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',343),(345,'Samosa','samosa.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',343),(347,'Fruitdish','fruitdish3.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',346),(349,'Gujarati daal','Gujarati-Daal1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',348),(350,'Rice','Rice1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',348),(351,'Stuffed Bhindi ki sabji','stuffedbhindi.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',348),(352,'Chapati','chapati1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',348),(354,'Soup','','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',353),(355,'Pullav','','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',353),(357,'Soup','soup2.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',356),(358,'Pullav','pullav3.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',356),(360,'Tea','Tea5.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',359),(361,'Tea','Tea6.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',359),(363,'Tea','Tea5.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',362),(364,'Mandu Vada','manduvada.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',362),(365,'Medu vada','manduvada1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',362),(367,'Tea','Tea5.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',366),(368,'Medu vada','manduvada1.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',366),(370,'Tea','Tea5.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',369),(371,'Poha','poha.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',369),(373,'Tea','Tea5.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',372),(374,'Veg-Puff','vegpuff.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',372),(376,'Tea','Tea5.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',375),(377,'Bhajiya','bhajiya.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',375),(379,'Tea','Tea5.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',378),(380,'Grilled Sandwitch','grilledsandwitch.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',378),(382,'Tea','Tea5.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',381),(383,'Sprouted Moong salad','sprotedmoongsalad.jpg','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\dishDetails\\','',381);

/*Table structure for table `feedback_table` */

CREATE TABLE `feedback_table` (
  `id` int(11) NOT NULL,
  `feedback_rating` varchar(255) default NULL,
  `feedback_subject` varchar(500) default NULL,
  `status` bit(1) default NULL,
  `login_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKqxdi4exmpukyd8lxhnnbx6wmr` (`login_id`),
  CONSTRAINT `FKqxdi4exmpukyd8lxhnnbx6wmr` FOREIGN KEY (`login_id`) REFERENCES `login` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback_table` */

insert  into `feedback_table`(`id`,`feedback_rating`,`feedback_subject`,`status`,`login_id`) values (43,'4','BookYourTiffin has a really nice app that is available in every platform. It is easy to use, has a lot of filters in order to find food you are craving for. Delivery costs range from free to a few rupees, depending on the quantity. The payments work really well with creditcard. Also had to claim once, and their customer service was really fast at processing my refund.','',9),(44,'5','BookYourTiffin webapp which makes it easy to choose from the menu of various kitchen in the city. The prices are affordable, and the service is excellent. Exciting offers come up often. Fresh food arrives at your doorstep without making you wait for long. We can filter the choice of foods (types of food), like sabji, roti,daal, rice and have them, on the go! Various choices for regular ,Jain and sweet dishes are available.\r\n\r\n','',9),(50,'2','Good website','\0',8),(195,'4','Book your tiffin website is very helpful for me and it helps me to sell my tiffin.','\0',2),(196,'4','It turns out to be very useful website for me!','',7),(197,'4','Tiffin menu feature is very useful for me I can easily alter my menu.','\0',6),(198,'4','It is very useful and I can see my personal rating on this website','',5),(199,'3','fine','\0',2),(200,'3','Book your tiffin website is very helpful for me and it helps me to sell my tiffin.','',2),(201,'3','Tiffin menu feature is very useful for me I can easily alter my menu.','',6),(207,'3','The food is always delivered hot and at time. The delivery boys take nice care of hygiene. It is very nice website and mostly all the vendors are available. ','',13),(208,'4','Book your tiffin is best website for tiffin service.','',13);

/*Table structure for table `hibernate_sequence` */

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (521),(521),(521),(521),(521),(521),(521),(521),(521),(521),(521);

/*Table structure for table `login` */

CREATE TABLE `login` (
  `loginId` int(11) NOT NULL auto_increment,
  `enabled` int(11) default NULL,
  `password` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`loginId`,`enabled`,`password`,`role`,`username`) values (1,1,'admin','ROLE_ADMIN','admin@gmail.com'),(2,1,'nisha','ROLE_VENDOR','nishashah0805@gmail.com'),(5,1,'vaidehi','ROLE_VENDOR','vaidehipatel10458@gmail.com'),(6,1,'ankita','ROLE_VENDOR','parikhankita77@gmail.com'),(7,1,'darshi','ROLE_VENDOR','darshi0543@gmail.com'),(8,1,'vatsal','ROLE_CUSTOMER','vatsalvkp@gmail.com'),(9,1,'asdf','ROLE_CUSTOMER','jhanvi.parikh1234@gmail.com'),(13,1,'12345','ROLE_CUSTOMER','himanshu.softvan@gmail.com'),(16,1,'vishhwa','ROLE_CUSTOMER','vishwa@gmail.com'),(17,1,'rupesh','ROLE_CUSTOMER','rupesh@gmail.com'),(18,1,'1ACP7PiX','ROLE_VENDOR','devampanchasara12@gmail.com');

/*Table structure for table `meal_table` */

CREATE TABLE `meal_table` (
  `id` int(11) NOT NULL,
  `meal_description` varchar(255) default NULL,
  `meal_type` varchar(255) default NULL,
  `status` bit(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `meal_table` */

insert  into `meal_table`(`id`,`meal_description`,`meal_type`,`status`) values (2,'Breakfast','Breakfast',''),(3,'Brunch','Brunch',''),(4,'Lunch','Lunch',''),(5,'Dinner','Dinner','');

/*Table structure for table `order_details_vo` */

CREATE TABLE `order_details_vo` (
  `id` int(11) NOT NULL,
  `days` int(11) default NULL,
  `meal_id` int(11) default NULL,
  `order_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK3s7rvfareqr1i8w5cwis0q629` (`meal_id`),
  KEY `FK7b73ggmegsst7a98c7c8h60mn` (`order_id`),
  CONSTRAINT `FK3s7rvfareqr1i8w5cwis0q629` FOREIGN KEY (`meal_id`) REFERENCES `meal_table` (`id`),
  CONSTRAINT `FK7b73ggmegsst7a98c7c8h60mn` FOREIGN KEY (`order_id`) REFERENCES `order_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order_details_vo` */

insert  into `order_details_vo`(`id`,`days`,`meal_id`,`order_id`) values (461,1,2,460),(462,3,4,460),(463,7,5,460),(464,1,3,460),(466,7,4,465),(468,1,2,467),(470,3,4,469),(471,1,3,469),(472,3,5,469),(474,7,4,473),(475,7,5,473),(477,1,2,476),(478,1,3,476),(479,1,4,476),(480,1,5,476),(483,7,3,482),(484,7,4,482),(487,3,4,486),(488,1,3,486),(502,1,2,501),(508,3,2,507),(509,3,4,507),(511,7,3,510),(512,7,4,510),(514,3,4,513),(515,1,3,513),(517,1,2,516),(518,1,3,516);

/*Table structure for table `order_table` */

CREATE TABLE `order_table` (
  `id` int(11) NOT NULL,
  `contactno` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `orderDate` varchar(255) default NULL,
  `orderStatus` varchar(255) default NULL,
  `orderid` varchar(255) default NULL,
  `person` int(11) default NULL,
  `status` bit(1) default NULL,
  `area_id` int(11) default NULL,
  `login_id` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  `address` varchar(255) default NULL,
  `total_price` varchar(255) default NULL,
  `orderMonth` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKnu93xj89kln8hesxkrclkdcxm` (`area_id`),
  KEY `FKqgorrypek4bes2kmsfxw663t6` (`login_id`),
  KEY `FKo0hefkrwrbodxlflbu6qkicqj` (`vendor_id`),
  CONSTRAINT `FKnu93xj89kln8hesxkrclkdcxm` FOREIGN KEY (`area_id`) REFERENCES `area_table` (`id`),
  CONSTRAINT `FKo0hefkrwrbodxlflbu6qkicqj` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_reg` (`id`),
  CONSTRAINT `FKqgorrypek4bes2kmsfxw663t6` FOREIGN KEY (`login_id`) REFERENCES `login` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order_table` */

insert  into `order_table`(`id`,`contactno`,`email`,`first_name`,`last_name`,`orderDate`,`orderStatus`,`orderid`,`person`,`status`,`area_id`,`login_id`,`vendor_id`,`address`,`total_price`,`orderMonth`) values (460,'8980619166','jhanvi.parikh1234@gmail.com','Jhanvi','Parikh','21-2-2021 11:26:51','ACCEPTED','b9b66a9c-7949-4564-b775-89d8f3f257b3',2,'',239,9,1,'203,Sujay Appartmnet  near Amikunj Crossroad\nNaranpura,','3220','05'),(465,'8980619166','jhanvi.parikh1234@gmail.com','Jhanvi','Parikh','21-2-2021 11:48:40','ACCEPTED','e53e4fc8-7f85-44bd-9bdc-6851cbc117ef',3,'',247,9,35,'203,Sujay Appartmnet  near Amikunj Crossroad\nNaranpura,','2520','02'),(467,'8980619166','jhanvi.parikh1234@gmail.com','Jhanvi','Parikh','23-3-2021 07:02:39','REJECTED','1aa77198-6381-4e18-aaf8-336032d49805',1,'',248,9,36,'203,Sujay Appartmnet  near Amikunj Crossroad\nNaranpura,','50','03'),(469,'8980619166','jhanvi.parikh1234@gmail.com','Jhanvi','Parikh','29-3-2021 04:53:39','ACCEPTED','16059f0b-ca5c-4f27-8a00-dab390bbc345',1,'',244,9,1,'203,Sujay Appartmnet  near Amikunj Crossroad\nNaranpura,','920','03'),(473,'1234567895','himanshu.softvan@gmail.com','Himanshu','Hirpara','29-3-2021 04:56:02','ACCEPTED','45f828ed-4046-4dd9-9f54-880c316be90b',1,'',245,13,1,'4/47 shrirang appartmnent opp lucky appartmentShastrinagar,                            ','1960','03'),(476,'1245789632','vatsalvkp@gmail.com','Vatsal','Panchal','29-4-2021 04:59:14','ORDERED','f59cd735-108e-46a9-bfd0-886cd0fec441',1,'',239,8,1,'12/1 Shantinath appartmnent near Police stationSatellite,                            ','410','04'),(482,'4567891230','vishwa@gmail.com','VIshwa','Shah','29-4-2021 05:01:32','ORDERED','da06a764-6a0a-4cd0-9879-0dfb81d5ee40',1,'',244,16,1,'20/119 Rupal park near ankur six roads ','1400','04'),(486,'9979606514','rupesh@gmail.com','Rupesh','parikh','29-4-2021 05:03:32','ORDERED','55872bee-c1a8-4494-afe4-d125cd634605',3,'',244,17,1,'102 Sujan tower near gardaghar Shastrinagar','1320','04'),(501,'8980619166','jhanvi.parikh1234@gmail.com','Jhanvi','Parikh','05-5-2021 02:43:19','ORDERED','7568a1bd-e9ff-4132-bfc9-6a577f71d7f8',1,'',248,9,36,'203,Sujay Appartmnet  near Amikunj Crossroad\nNaranpura,','50','05'),(507,'8980619166','jhanvi.parikh1234@gmail.com','Jhanvi','Parikh','07-5-2021 02:51:13','REJECTED','d64a3098-69ee-464b-a6e9-7862b5183f7d',1,'',244,9,1,'203,Sujay Appartmnet  near Amikunj Crossroad\nNaranpura,','510','05'),(510,'8980619166','jhanvi.parikh1234@gmail.com','Jhanvi','Parikh','18-5-2021 09:15:34','ACCEPTED','dc49d371-9ca6-4570-a6bb-23a8e2e6e79b',1,'',246,9,35,'203,Sujay Appartmnet  near Amikunj Crossroad\nNaranpura,','1400','05'),(513,'8980619166','jhanvi.parikh1234@gmail.com','Jhanvi','Parikh','18-5-2021 09:16:02','ACCEPTED','0f1b9584-5fab-4949-a6f8-7c71cb41c075',1,'',239,9,1,'203,Sujay Appartmnet  near Amikunj Crossroad\nNaranpura,','440','05'),(516,'8980619166','jhanvi.parikh1234@gmail.com','Jhanvi','Parikh','25-5-2021 03:20:55','ORDERED','fbdf6510-22cd-4aa3-a376-14405de73de2',2,'',246,9,35,'203,Sujay Appartmnet  near Amikunj Crossroad\nAdjan,','260','05');

/*Table structure for table `otp_table` */

CREATE TABLE `otp_table` (
  `id` int(11) NOT NULL auto_increment,
  `email` varchar(255) default NULL,
  `otp` varchar(255) default NULL,
  `token` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `otp_table` */

insert  into `otp_table`(`id`,`email`,`otp`,`token`) values (1,'jhanvi.parikh1234@gmail.com','2384','PfClydzL'),(2,'jhanvi.parikh1234@gmail.com','2883','48zqRkPN'),(3,'jhanvi.parikh1234@gmail.com','1717','8KY5GKS6'),(4,'jhanvi.parikh1234@gmail.com','6076','xM2jblTs'),(5,'jhanvi.parikh1234@gmail.com','5615','HWYpAMyB'),(6,'jhanvi.parikh1234@gmail.com','7419','Kcn1D38l'),(7,'jhanvi.parikh1234@gmail.com','7231','VbVJ735N'),(8,'jhanvi.parikh1234@gmail.com','5331','6Rd87196'),(9,'jhanvi.parikh1234@gmail.com','1677','iv4EXrBr'),(10,'jhanvi.parikh1234@gmail.com','2283','E6EAUsuu'),(11,'jhanvi.parikh1234@gmail.com','6077','5NOjZqbQ'),(13,'jhanvi.parikh1234@gmail.com','7661','M3SComWq'),(16,'jhanvi.parikh1234@gmail.com','5766','PqsdQqzj'),(25,'jhanvi.parikh1234@gmail.com','1520','KCbzrMBd'),(26,'jhanvi.parikh1234@gmail.com','1654','UCcerMhW'),(30,'jhanvi.parikh1234@gmail.com','2248','0pu0ptFT'),(31,'jhanvi.parikh1234@gmail.com','1442','Kyefb4TK'),(32,'jhanvi.parikh1234@gmail.com','6935','6UvxCRPU'),(33,'jhanvi.parikh1234@gmail.com','3523','KKgaQzoZ'),(34,'jhanvi.parikh1234@gmail.com','4935','aDtgLeFU'),(35,'jhanvi.parikh1234@gmail.com','2150','dl9VN9Bl'),(36,'jhanvi.parikh1234@gmail.com','5990','jmnLo1OS');

/*Table structure for table `package_table` */

CREATE TABLE `package_table` (
  `id` int(11) NOT NULL,
  `package_description` varchar(255) default NULL,
  `package_duration` varchar(255) default NULL,
  `package_name` varchar(255) default NULL,
  `package_range_from` varchar(255) default NULL,
  `package_rangeto` varchar(255) default NULL,
  `Percentage` varchar(255) default NULL,
  `status` bit(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `package_table` */

insert  into `package_table`(`id`,`package_description`,`package_duration`,`package_name`,`package_range_from`,`package_rangeto`,`Percentage`,`status`) values (503,'Book Your Tiffin provides deliver home cooked food to everyone out there.','3 Months','Silver','0','25,000 &#8377;','15','\0'),(504,'Book Your Tiffin provides deliver home cooked food to everyone out there.','3 Months','Silver','0','25,000 &#8377;','15',''),(505,'Book Your Tiffin provides deliver home cooked food to everyone out there.','6 Months','Gold','25,000','50,000 &#8377;','10',''),(520,'Book Your Tiffin provides deliver home cooked food to everyone out there.','12 Months','Platinum','50,000 &#8377;','Above','5 ','');

/*Table structure for table `tiffinmenu_table` */

CREATE TABLE `tiffinmenu_table` (
  `id` int(11) NOT NULL,
  `day` varchar(255) default NULL,
  `price` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `time_from` varchar(255) default NULL,
  `time_to` varchar(255) default NULL,
  `login_id` int(11) default NULL,
  `meal_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKsl4hxkunnf5b6993uxvxes9i4` (`login_id`),
  KEY `FK7h6cqwaimp81xk6wijg9wibw5` (`meal_id`),
  CONSTRAINT `FK7h6cqwaimp81xk6wijg9wibw5` FOREIGN KEY (`meal_id`) REFERENCES `meal_table` (`id`),
  CONSTRAINT `FKsl4hxkunnf5b6993uxvxes9i4` FOREIGN KEY (`login_id`) REFERENCES `login` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tiffinmenu_table` */

insert  into `tiffinmenu_table`(`id`,`day`,`price`,`status`,`time_from`,`time_to`,`login_id`,`meal_id`) values (6,'Sunday','50','','08:00','10:00',2,2),(11,'Sunday','80','','10:00','00:00',2,3),(13,'Sunday','120','','12:00','15:00',2,4),(18,'Sunday','160','','19:00','23:00',2,5),(61,'Monday','50','','08:00','10:00',2,2),(64,'Monday','80','','10:00','12:00',2,3),(66,'Monday','120','\0','12:00','15:00',2,4),(71,'Monday','50','\0','08:00','10:00',2,2),(74,'Monday','120','\0','12:00','15:00',2,4),(79,'Monday','160','','19:00','23:00',2,5),(84,'Monday','120','','12:00','15:00',2,4),(89,'Tuesday','50','','08:00','10:00',2,2),(92,'Tuesday','80','','10:00','12:00',2,3),(94,'Tuesday','120','','12:00','15:00',2,4),(99,'Tuesday','160','','19:00','23:00',2,5),(103,'Wednesday','50','','08:00','10:00',2,2),(106,'Wednesday','80','','10:00','12:00',2,3),(108,'Wednesday','120','','12:00','15:00',2,4),(113,'Wednesday','160','','19:00','23:00',2,5),(117,'Thursday','50','','08:00','10:00',2,2),(120,'Thursday','80','\0','10:00','12:00',2,3),(122,'Thursday','80','','10:00','12:00',2,3),(124,'Thursday','120','','12:00','15:00',2,4),(129,'Thursday','160','','19:00','23:00',2,5),(133,'Friday','50','','08:00','10:00',2,2),(136,'Friday','80','','10:00','12:00',2,3),(139,'Friday','120','','12:00','15:00',2,4),(144,'Friday','160','','19:00','23:00',2,5),(149,'Saturday','50','','08:00','10:00',2,2),(152,'Saturday','80','','10:00','12:00',2,3),(154,'Saturday','120','','12:00','15:00',2,4),(159,'Saturday','160','','19:00','23:00',2,5),(219,'Monday','50','\0','08:00','10:00',5,2),(222,'Sunday','50','\0','08:00','10:00',5,2),(225,'Sunday','50','\0','08:00','10:00',5,2),(228,'Monday','50','\0','08:00','10:00',5,2),(231,'Monday','50','\0','08:00','10:00',5,2),(234,'Monday','50','\0','08:00','10:00',5,2),(237,'Monday','50','\0','08:00','10:00',5,2),(256,'Tuesday','50','\0','08:00','10:00',5,2),(259,'Sunday','50','','08:00','10:00',5,2),(262,'Sunday','80','','10:00','12:00',5,3),(264,'Sunday','120','','12:00','15:00',5,4),(269,'Sunday','160','','19:00','23:00',5,5),(274,'Monday','50','','08:00','10:00',5,2),(277,'Monday','80','','10:00','12:00',5,3),(279,'Monday','120','','12:00','15:00',5,4),(284,'Monday','160','','19:00','23:00',5,5),(286,'Tuesday','50','','08:00','10:00',5,2),(289,'Tuesday','80','','10:00','12:00',5,3),(291,'Tuesday','120','','12:00','15:00',5,4),(295,'Tuesday','160','','19:00','23:00',5,5),(298,'Wednesday','50','\0','08:00','10:00',5,2),(301,'Wednesday','80','\0','10:00','00:00',5,3),(303,'Wednesday','50','\0','08:00','10:00',5,2),(306,'Wednesday','50','','08:00','10:00',5,2),(309,'Wednesday','80','','10:00','00:00',5,3),(311,'Wednesday','120','','12:00','15:00',5,4),(316,'Wednesday','160','','19:00','23:00',5,5),(319,'Thursday','50','','08:00','10:00',5,2),(322,'Thursday','80','','10:00','12:00',5,3),(324,'Thursday','120','','12:00','15:00',5,4),(328,'Thursday','160','','19:00','23:00',5,5),(331,'Friday','50','','08:00','10:00',5,2),(334,'Friday','80','','10:00','12:00',5,3),(336,'Friday','120','','12:00','15:00',5,4),(341,'Friday','160','','19:00','23:00',5,5),(343,'Saturday','50','','08:00','10:00',5,2),(346,'Saturday','80','','10:00','12:00',5,3),(348,'Saturday','120','','12:00','15:00',5,4),(353,'Saturday','160','\0','19:00','23:00',5,5),(356,'Saturday','160','','19:00','23:00',5,5),(359,'Sunday','50','\0','08:00','10:00',6,2),(362,'Sunday','50','\0','08:00','10:00',6,2),(366,'Sunday','50','','08:00','10:00',6,2),(369,'Monday','50','','08:00','10:00',6,2),(372,'Saturday','50','','08:00','10:00',6,2),(375,'Thursday','50','','08:00','10:00',6,2),(378,'Friday','50','','08:00','10:00',6,2),(381,'Wednesday','50','','08:00','10:00',6,2);

/*Table structure for table `user_reg` */

CREATE TABLE `user_reg` (
  `id` int(11) NOT NULL,
  `Full_name` varchar(255) default NULL,
  `Gender` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `Login_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKbc19ig07fwvwws2guy5xjb5nj` (`Login_id`),
  CONSTRAINT `FKbc19ig07fwvwws2guy5xjb5nj` FOREIGN KEY (`Login_id`) REFERENCES `login` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_reg` */

insert  into `user_reg`(`id`,`Full_name`,`Gender`,`status`,`Login_id`) values (38,'Vatsal Panchal','Male','',8),(42,'Jhanvi Parikh','Female','',9),(183,'HImanshu Hirpara','Male','',13),(481,'VIshwa','Female','',16),(485,'Rupesh','Male','',17);

/*Table structure for table `vendor_rating_table` */

CREATE TABLE `vendor_rating_table` (
  `id` int(11) NOT NULL,
  `feedback_subject` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `feedback_rating` varchar(255) default NULL,
  `login_id` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKces6lvevyk43947gmg3r9qi27` (`login_id`),
  KEY `FKbck7mwy2iadnjsu7ru6l7n5wo` (`vendor_id`),
  CONSTRAINT `FKbck7mwy2iadnjsu7ru6l7n5wo` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_reg` (`id`),
  CONSTRAINT `FKces6lvevyk43947gmg3r9qi27` FOREIGN KEY (`login_id`) REFERENCES `login` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vendor_rating_table` */

insert  into `vendor_rating_table`(`id`,`feedback_subject`,`status`,`feedback_rating`,`login_id`,`vendor_id`) values (47,'Good Food','','4',9,1),(184,'Good cuisine...','','5',13,1),(204,'Nisha\'s food is very delicious  and tasty and it contains variety for everyday.','','4',13,1),(205,'Nisha\'s food is excellent!!','','4',13,1),(206,'Firstly I tried your food for change but now I don\'t want to order from some other vendors.','','4',13,35),(209,'Ankita is very nice chef and her food is very hygenic.','','4',13,36),(210,'I just love to eat food made by Darshi.','','5',13,37),(211,'Vaidehi\'s kitchens food is very tasty and also she maintains cleanliness in her kitchen','','5',9,35),(212,'Good food and great quality','','4',9,36),(213,'Good food and large quantity','','4',9,37);

/*Table structure for table `vendor_reg` */

CREATE TABLE `vendor_reg` (
  `id` int(11) NOT NULL,
  `Address` varchar(255) default NULL,
  `Contactno` varchar(255) default NULL,
  `fileName` varchar(255) default NULL,
  `filePath` varchar(255) default NULL,
  `flag` bit(1) default NULL,
  `Full_name` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `Login_id` int(11) default NULL,
  `city_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKf712vv8cqhxlcohxu8uj42myf` (`Login_id`),
  KEY `FKrgq6qsqllyspkavrgo5be30u1` (`city_id`),
  CONSTRAINT `FKf712vv8cqhxlcohxu8uj42myf` FOREIGN KEY (`Login_id`) REFERENCES `login` (`loginId`),
  CONSTRAINT `FKrgq6qsqllyspkavrgo5be30u1` FOREIGN KEY (`city_id`) REFERENCES `city_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vendor_reg` */

insert  into `vendor_reg`(`id`,`Address`,`Contactno`,`fileName`,`filePath`,`flag`,`Full_name`,`status`,`Login_id`,`city_id`) values (1,'4/47 Shrirang Appartment opp Lucky Appartment , Shastrinagar,Ahmedabad','1234567892','aadharcard.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\vendorDetails\\','','Nisha Shah','',2,214),(35,'20/119 Rupal Park near Vijaynagar School , Ankur, Ahmedabad','7845126393','aadharcard.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\vendorDetails\\','','Vaidehi Patel','',5,215),(36,'5,New Sharad Society behind Vijaynagar School , Naranpura , Ahmedabad','9725682533','aadharcard.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\vendorDetails\\','','Ankita Parikh','',6,216),(37,'D-22 Arjun Tower near Anand Restaurant, Shastrinagar , Ahmedabad','6532147846','aadharcard.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\vendorDetails\\','','Darshi Desai','',7,217),(519,'29 Niharika bunglows near Amrutapur ','7894561230','aadharcard.png','C:\\projectworkspace\\com.bookyourtiffin\\src\\main\\webapp\\documents\\vendorDetails\\','','Pooja Patel','',18,218);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
