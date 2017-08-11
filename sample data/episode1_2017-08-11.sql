# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.19)
# Database: episode1
# Generation Time: 2017-08-11 06:53:45 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table genre_movie
# ------------------------------------------------------------

DROP TABLE IF EXISTS `genre_movie`;

CREATE TABLE `genre_movie` (
  `genre_id` int(10) unsigned DEFAULT NULL,
  `movie_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `genre_movie_genre_id_foreign` (`genre_id`),
  KEY `genre_movie_movie_id_foreign` (`movie_id`),
  CONSTRAINT `genre_movie_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE,
  CONSTRAINT `genre_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `genre_movie` WRITE;
/*!40000 ALTER TABLE `genre_movie` DISABLE KEYS */;

INSERT INTO `genre_movie` (`genre_id`, `movie_id`, `created_at`, `updated_at`)
VALUES
	(2,1,NULL,NULL),
	(3,1,NULL,NULL),
	(1,2,NULL,NULL),
	(2,2,NULL,NULL),
	(2,3,NULL,NULL),
	(3,3,NULL,NULL),
	(2,4,NULL,NULL),
	(1,5,NULL,NULL),
	(2,5,NULL,NULL),
	(3,5,NULL,NULL),
	(1,6,NULL,NULL),
	(2,6,NULL,NULL);

/*!40000 ALTER TABLE `genre_movie` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table genres
# ------------------------------------------------------------

DROP TABLE IF EXISTS `genres`;

CREATE TABLE `genres` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'АДАЛ ЯВДАЛ',NULL,NULL),
	(2,'УРАН ЗӨГНӨЛТ',NULL,NULL),
	(3,'ДРАМ',NULL,NULL),
	(4,'БАРИМТАТ',NULL,NULL);

/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2017_08_10_080029_create_movies_table',1),
	(4,'2017_08_10_080044_create_tv_shows_table',1),
	(5,'2017_08_10_080054_create_genres_table',1),
	(6,'2017_08_10_080958_genre_movie',1),
	(7,'2017_08_10_081301_create_genre_movie_table',1),
	(8,'2017_08_10_100007_create_reviews_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table movies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `movies`;

CREATE TABLE `movies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;

INSERT INTO `movies` (`id`, `title`, `content`, `poster`, `youtube_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,'Interstellar','A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.','http://static.rogerebert.com/uploads/movie/movie_poster/interstellar-2014/large_lbGGuk9K1kNQqDabaMyFz1L9iTg.jpg','zSWdZVtXT7E',1,'2017-08-10 18:02:10','2017-08-10 18:02:10'),
	(2,'Gravity','Two astronauts work together to survive after an accident which leaves them alone in space.','https://upload.wikimedia.org/wikipedia/en/f/f6/Gravity_Poster.jpg','OiTiKOy59o4',1,'2017-08-10 18:03:13','2017-08-10 18:03:13'),
	(3,'Space Between Us','The first human born on Mars travels to Earth for the first time, experiencing the wonders of the planet through fresh eyes. He embarks on an adventure with a street smart girl to discover how he came to be.','https://upload.wikimedia.org/wikipedia/en/7/78/The_Space_Between_Us_poster.jpg','x73-573aWfs',1,'2017-08-10 18:13:51','2017-08-10 18:13:51'),
	(4,'Jupiter Ascending','A young woman discovers her destiny as an heiress of intergalactic nobility and must fight to protect the inhabitants of Earth from an ancient and destructive industry.','http://www.jupiterascending.com/tumblr/images/tt-2_large.jpg','t4ZzMkDLjWI',1,'2017-08-10 18:14:41','2017-08-10 18:14:41'),
	(5,'The Martian','An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.','http://nickyarborough.com/wp-content/uploads/2015/11/the-martian-104112-poster-xlarge.jpg','ej3ioOneTy8',1,'2017-08-10 18:15:27','2017-08-10 18:15:27'),
	(6,'Star Trek Beyond','The U.S.S. Enterprise crew explores the furthest reaches of uncharted space, where they encounter a new ruthless enemy, who puts them, and everything the Federation stands for, to the test.','http://vignette1.wikia.nocookie.net/memoryalpha/images/f/f9/Star_Trek_Beyond_poster_variant.jpg/revision/latest?cb=20160531201215&path-prefix=en','XRVD32rnzOw',1,'2017-08-10 18:16:14','2017-08-10 18:16:14');

/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table reviews
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;

INSERT INTO `reviews` (`id`, `contet`, `movie_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,'Starting from the very first frame and ending with the closing credits, a new picture of Nolan will absorb you completely, forcing stare at the screen during the whole action, because it\'s all so exciting and interesting that escape becomes physically impossible. No, this three hours won\'t fly quickly for you. You\'ll feel every emotion, every event, every character. You will not look how the main characters travel through the universe, because the movie experience in this film is so excellent that you will be on board of \"Endurance\" starship and travel between the worlds with the main characters by yourself.',1,1,'2017-08-10 18:09:46','2017-08-10 18:09:46'),
	(2,'Hello World from Binary World',3,1,'2017-08-10 18:20:19','2017-08-10 18:20:19');

/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tv_shows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tv_shows`;

CREATE TABLE `tv_shows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'orgil','orgil@gmail.com','$2y$10$lL/VfWoFSAwFgU7dHzQtQeLD9XLEc8zKSecl.zZP3h6KGn0LFehSK','E2A1jriBrT7cVocnJfr5N1DMaZBXK2hZrv7tFZj0LHzo3aQZ6pU0BXcs98HW','2017-08-10 17:55:46','2017-08-10 17:55:46');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
