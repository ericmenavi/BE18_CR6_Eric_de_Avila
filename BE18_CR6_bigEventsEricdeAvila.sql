-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2023 at 05:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BE18_CR6_bigEventsEricdeAvila`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230415115255', '2023-04-15 11:54:19', 93);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `description`, `image`, `capacity`, `email`, `phone`, `address`, `country`, `city`, `zip`, `url`, `type`) VALUES
(1, 'Summer Music Festival', '2023-08-12', 'Join us for a day of live music performances by some of the hottest artists of the summer!', 'https://images.pexels.com/photos/16384068/pexels-photo-16384068.jpeg?auto=compress&cs=tinysrgb&w=1200', 10000, 'info@summermusicfestival.com', '555-123-4567', '123 Main St', 'United States', 'Los Angeles', '90001', 'https://summermusicfestival.com', 'music'),
(2, 'Annual Charity Golf Tournament', '2023-09-15', 'Help support a great cause while enjoying a day out on the links!', 'https://images.pexels.com/photos/1325652/pexels-photo-1325652.jpeg?auto=compress&cs=tinysrgb&w=1200', 144, 'golf@charitytournament.org', '555-987-6543', '456 Oak St', 'Canada', 'Toronto', 'M5V 2H1', 'https://charitytournament.org/golf', 'sport'),
(3, 'Outdoor Movie Night', '2023-07-22', 'Grab your blankets and snacks and join us for a screening of a classic movie under the stars!', 'https://images.pexels.com/photos/7900688/pexels-photo-7900688.jpeg?auto=compress&cs=tinysrgb&w=1200', 200, 'info@outdoormovienight.net', '555-555-1212', '789 Maple Ave', 'United States', 'Chicago', '60601', 'https://outdoormovienight.net', 'movie'),
(4, 'Shakespeare in the Park', '2023-06-30', 'Enjoy a performance of one of Shakespeare\'s greatest plays in a beautiful outdoor setting!', 'https://images.pexels.com/photos/16191665/pexels-photo-16191665.jpeg?auto=compress&cs=tinysrgb&w=1200', 300, 'tickets@shakespeareinthepark.com', '555-867-5309', '321 Elm St', 'United States', 'New York', '10019', 'https://shakespeareinthepark.com', 'theater'),
(5, 'Autumn Wine Tasting', '2023-10-15', 'Join us for an afternoon of sampling some of the finest wines from the vineyards of Lower Austria!', 'https://images.pexels.com/photos/5662348/pexels-photo-5662348.jpeg?auto=compress&cs=tinysrgb&w=1200', 50, 'info@loweraustriawines.com', '+43 1 535 25 30', 'Langenloiser Straße 20', 'Austria', 'Kamptal', '3550', 'https://loweraustriawines.com/events', 'outdoor'),
(6, 'Vienna International Short Film Festival', '2023-05-22', 'Experience the latest and greatest short films from around the world!', 'https://images.pexels.com/photos/1689608/pexels-photo-1689608.jpeg?auto=compress&cs=tinysrgb&w=1200', 300, 'info@viennashortfilmfestival.com', '+43 1 533 70 90', 'Mariahilfer Straße 58', 'Austria', 'Vienna', '1070', 'https://viennashortfilmfestival.com', 'movie'),
(7, 'Austrian National Football Team vs. Italy', '2023-06-14', 'Cheer on the Austrian National Football Team as they take on Italy in an exciting international match!', 'https://images.pexels.com/photos/3571569/pexels-photo-3571569.jpeg?auto=compress&cs=tinysrgb&w=1200', 25000, 'tickets@austriannationalteam.com', '+43 1 727 180', 'Praterstraße 1', 'Austria', 'Vienna', '1020', 'https://austriannationalteam.com', 'sport'),
(8, 'Vienna Summer Night Concert', '2023-07-22', 'Enjoy an unforgettable evening of classical music under the stars at Schönbrunn Palace!', 'https://images.pexels.com/photos/10633450/pexels-photo-10633450.jpeg?auto=compress&cs=tinysrgb&w=1200', 8000, 'tickets@viennasummernightconcert.com', '+43 1 589 30 200', 'Schönbrunner Schloßstraße 47', 'Austria', 'Vienna', '1130', 'https://viennasummernightconcert.com', 'music'),
(9, 'Bogotá Jazz Festival', '2023-09-05', 'Join us for the annual Bogotá Jazz Festival, featuring performances by world-renowned jazz musicians!', 'https://images.pexels.com/photos/1358817/pexels-photo-1358817.jpeg?auto=compress&cs=tinysrgb&w=1200', 5000, 'info@bogotajazzfestival.com', '+57 1 256 1786', 'Calle 24 #6-31', 'Colombia', 'Bogotá', '111711', 'https://bogotajazzfestival.com', 'music'),
(10, 'Medellín Flower Fair', '2023-08-04', 'Experience the beauty and fragrance of flowers at the Medellín Flower Fair!', 'https://images.pexels.com/photos/14475837/pexels-photo-14475837.jpeg?auto=compress&cs=tinysrgb&w=1200', 10000, 'info@medellinflowerfair.com', '+57 4 232 4488', 'Cra. 43a #1-50', 'Colombia', 'Medellín', '050034', 'https://medellinflowerfair.com', 'festival'),
(11, 'Cartagena International Film Festival', '2023-03-01', 'Discover the latest and greatest in cinema from Latin America and around the world at the Cartagena International Film Festival!', 'https://images.pexels.com/photos/12470921/pexels-photo-12470921.jpeg?auto=compress&cs=tinysrgb&w=1200', 500, 'info@cartagenafilmfestival.com', '+57 5 660 1030', 'Calle de la Moneda # 7 - 82', 'Colombia', 'Cartagena', '130001', 'https://cartagenafilmfestival.com', 'movie'),
(12, 'Tokyo International Anime Fair', '2023-03-22', 'Immerse yourself in the world of anime and manga at the Tokyo International Anime Fair!', 'https://images.pexels.com/photos/11796356/pexels-photo-11796356.jpeg?auto=compress&cs=tinysrgb&w=1200', 20000, 'info@tokyointernationalanimefair.com', '+81 3 5829 5600', '3 Chome-1-1 Ariake', 'Japan', 'Tokyo', '135-0063', 'https://tokyointernationalanimefair.com', 'entertainment'),
(13, 'Osaka Ramen Expo', '2023-11-05', 'Sample a wide variety of delicious ramen dishes from all over Japan at the Osaka Ramen Expo!', 'https://images.pexels.com/photos/5907928/pexels-photo-5907928.jpeg?auto=compress&cs=tinysrgb&w=1200', 10000, 'info@osakaramenexpo.com', '+81 6 6452 1300', '5 Chome-3-51 Nakanoshima, Kita Ward', 'Japan', 'Osaka', '530-0005', 'https://osakaramenexpo.com', 'food');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
