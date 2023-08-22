--
-- Table structure for table `guests`
--

CREATE DATABASE IF NOT EXISTS checkinn;
use checkinn;
DROP TABLE IF EXISTS `guests`;

CREATE TABLE `guests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
INSERT INTO `guests` VALUES (3,'Arun Mishra','India','arun@gmail.com',6393811484,"Varanasi",'2023-03-15 08:51:19'),(4,'Mohit Yadav','India','mohit@mohit.yayy.me',1111111111,"Jaipur",'2023-03-17 05:19:02'),(5,'Anirudh','NMS','anisin300@gmail.com',9191919191,"Jaipur",'2023-03-18 06:58:23');
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `sec_que` varchar(100) NULL,
  `sec_ans` varchar(30) NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
INSERT INTO `login` VALUES ('username','password', NULL, NULL,'2023-03-15');
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` int(11) DEFAULT NULL,
  `r_date` datetime DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `meal` tinyint(1) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `r_type` char(2) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_guests` (`g_id`),
  -- COMMENT OUT THIS CONSTRAINT FOR First time
  KEY `FK_rooms` (`r_id`),
  CONSTRAINT `FK_guests` FOREIGN KEY (`g_id`) REFERENCES `guests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_rooms` FOREIGN KEY (`r_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
INSERT INTO `reservations` VALUES (12,4,'2023-03-15 00:00:00','2023-03-15 00:00:00','2023-03-15 00:00:00',0,3,'B','2023-03-15 07:05:05'),(13,3,NULL,'2023-03-15 05:33:05',NULL,1,1,NULL,'2023-03-15 05:33:05');
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_no` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `room_type` char(2) DEFAULT NULL,
  `currently_booked` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_no` (`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
INSERT INTO `rooms` VALUES (1,1,4500,'D',0,'2023-03-15 07:05:03'),(3,2,3402,'D',0,'2023-03-16 10:38:49'),(4,10,2300,'D',0,'2023-03-17 05:15:29'),(5,4,3124,'N',0,'2023-03-17 05:15:38'),(6,69,3241,'N',0,'2023-03-17 05:16:09'),(7,3,4000,'D',0,'2023-03-17 05:16:33'),(9,5,2341,'D',0,'2023-03-17 05:17:29'),(10,21,3045,'D',0,'2023-03-17 06:57:46');
UNLOCK TABLES;
