-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2026 at 12:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `price`, `image`) VALUES
(1, '1984', 1200.00, 'https://covers.openlibrary.org/b/title/1984-L.jpg'),
(2, 'To Kill a Mockingbird', 1400.00, 'https://covers.openlibrary.org/b/title/To%20Kill%20a%20Mockingbird-L.jpg'),
(3, 'The Lord of the Rings', 2500.00, 'https://covers.openlibrary.org/b/title/The%20Lord%20of%20the%20Rings-L.jpg'),
(4, 'The Catcher in the Rye', 1300.00, 'https://covers.openlibrary.org/b/title/The%20Catcher%20in%20the%20Rye-L.jpg'),
(5, 'The Great Gatsby', 1100.00, 'https://covers.openlibrary.org/b/title/The%20Great%20Gatsby-L.jpg'),
(6, 'Pride and Prejudice', 1150.00, 'https://covers.openlibrary.org/b/title/Pride%20and%20Prejudice-L.jpg'),
(7, 'Crime and Punishment', 1350.00, 'https://covers.openlibrary.org/b/title/Crime%20and%20Punishment-L.jpg'),
(8, 'One Hundred Years of Solitude', 1500.00, 'https://covers.openlibrary.org/b/title/One%20Hundred%20Years%20of%20Solitude-L.jpg'),
(9, 'Anna Karenina', 1450.00, 'https://covers.openlibrary.org/b/title/Anna%20Karenina-L.jpg'),
(10, 'The Odyssey', 1100.00, 'https://covers.openlibrary.org/b/title/The%20Odyssey-L.jpg'),
(11, 'Hamlet', 1050.00, 'https://covers.openlibrary.org/b/title/Hamlet-L.jpg'),
(12, 'Ulysses', 1800.00, 'https://covers.openlibrary.org/b/title/Ulysses-L.jpg'),
(13, 'Don Quixote', 1700.00, 'https://covers.openlibrary.org/b/title/Don%20Quixote-L.jpg'),
(14, 'Alice\'s Adventures in Wonderland', 900.00, 'https://covers.openlibrary.org/b/title/Alice%27s%20Adventures%20in%20Wonderland-L.jpg'),
(15, 'Treasure Island', 950.00, 'https://covers.openlibrary.org/b/title/Treasure%20Island-L.jpg'),
(16, 'The Adventures of Tom Sawyer', 950.00, 'https://covers.openlibrary.org/b/title/The%20Adventures%20of%20Tom%20Sawyer-L.jpg'),
(17, 'Lord of the Flies', 980.00, 'https://covers.openlibrary.org/b/title/Lord%20of%20the%20Flies-L.jpg'),
(18, 'Frankenstein', 1200.00, 'https://covers.openlibrary.org/b/title/Frankenstein-L.jpg'),
(19, 'Moby Dick', 1400.00, 'https://covers.openlibrary.org/b/title/Moby%20Dick-L.jpg'),
(20, 'Brave New World', 1300.00, 'https://covers.openlibrary.org/b/title/Brave%20New%20World-L.jpg'),
(21, 'The Hobbit', 1600.00, 'https://covers.openlibrary.org/b/title/The%20Hobbit-L.jpg'),
(22, 'Fahrenheit 451', 1150.00, 'https://covers.openlibrary.org/b/title/Fahrenheit%20451-L.jpg'),
(23, 'Jane Eyre', 1350.00, 'https://covers.openlibrary.org/b/title/Jane%20Eyre-L.jpg'),
(24, 'Wuthering Heights', 1320.00, 'https://covers.openlibrary.org/b/title/Wuthering%20Heights-L.jpg'),
(25, 'The Picture of Dorian Gray', 1280.00, 'https://covers.openlibrary.org/b/title/The%20Picture%20of%20Dorian%20Gray-L.jpg'),
(26, 'The Brothers Karamazov', 1520.00, 'https://covers.openlibrary.org/b/title/The%20Brothers%20Karamazov-L.jpg'),
(27, 'Great Expectations', 1380.00, 'https://covers.openlibrary.org/b/title/Great%20Expectations-L.jpg'),
(28, 'Catch-22', 1450.00, 'https://covers.openlibrary.org/b/title/Catch-22-L.jpg'),
(29, 'The Grapes of Wrath', 1420.00, 'https://covers.openlibrary.org/b/title/The%20Grapes%20of%20Wrath-L.jpg'),
(30, 'Slaughterhouse-Five', 1370.00, 'https://covers.openlibrary.org/b/title/Slaughterhouse-Five-L.jpg'),
(31, 'The Kite Runner', 1480.00, 'https://covers.openlibrary.org/b/title/The%20Kite%20Runner-L.jpg'),
(32, 'The Alchemist', 1250.00, 'https://covers.openlibrary.org/b/title/The%20Alchemist-L.jpg'),
(33, 'Life of Pi', 1490.00, 'https://covers.openlibrary.org/b/title/Life%20of%20Pi-L.jpg'),
(34, 'The Da Vinci Code', 1550.00, 'https://covers.openlibrary.org/b/title/The%20Da%20Vinci%20Code-L.jpg'),
(35, 'The Hunger Games', 1600.00, 'https://covers.openlibrary.org/b/title/The%20Hunger%20Games-L.jpg'),
(36, 'Twilight', 1280.00, 'https://covers.openlibrary.org/b/title/Twilight-L.jpg'),
(37, 'Divergent', 1290.00, 'https://covers.openlibrary.org/b/title/Divergent-L.jpg'),
(38, 'Harry Potter and the Sorcerer\'s Stone', 1700.00, 'https://covers.openlibrary.org/b/title/Harry%20Potter%20and%20the%20Sorcerer%27s%20Stone-L.jpg'),
(39, 'Harry Potter and the Chamber of Secrets', 1700.00, 'https://covers.openlibrary.org/b/title/Harry%20Potter%20and%20the%20Chamber%20of%20Secrets-L.jpg'),
(40, 'Harry Potter and the Prisoner of Azkaban', 1700.00, 'https://covers.openlibrary.org/b/title/Harry%20Potter%20and%20the%20Prisoner%20of%20Azkaban-L.jpg'),
(41, 'Harry Potter and the Goblet of Fire', 1700.00, 'https://covers.openlibrary.org/b/title/Harry%20Potter%20and%20the%20Goblet%20of%20Fire-L.jpg'),
(42, 'Harry Potter and the Order of the Phoenix', 1700.00, 'https://covers.openlibrary.org/b/title/Harry%20Potter%20and%20the%20Order%20of%20the%20Phoenix-L.jpg'),
(43, 'Harry Potter and the Half-Blood Prince', 1700.00, 'https://covers.openlibrary.org/b/title/Harry%20Potter%20and%20the%20Half-Blood%20Prince-L.jpg'),
(44, 'Harry Potter and the Deathly Hallows', 1700.00, 'https://covers.openlibrary.org/b/title/Harry%20Potter%20and%20the%20Deathly%20Hallows-L.jpg'),
(45, 'The Chronicles of Narnia', 1600.00, 'https://covers.openlibrary.org/b/title/The%20Chronicles%20of%20Narnia-L.jpg'),
(46, 'The Book Thief', 1500.00, 'https://covers.openlibrary.org/b/title/The%20Book%20Thief-L.jpg'),
(47, 'Memoirs of a Geisha', 1490.00, 'https://covers.openlibrary.org/b/title/Memoirs%20of%20a%20Geisha-L.jpg'),
(48, 'The Help', 1420.00, 'https://covers.openlibrary.org/b/title/The%20Help-L.jpg'),
(49, 'Gone with the Wind', 1500.00, 'https://covers.openlibrary.org/b/title/Gone%20with%20the%20Wind-L.jpg'),
(50, 'A Tale of Two Cities', 1400.00, 'https://covers.openlibrary.org/b/title/A%20Tale%20of%20Two%20Cities-L.jpg'),
(51, 'Les Misérables', 1800.00, 'https://covers.openlibrary.org/b/title/Les%20Mis%C3%A9rables-L.jpg'),
(52, 'Dracula', 1280.00, 'https://covers.openlibrary.org/b/title/Dracula-L.jpg'),
(53, 'The Time Machine', 1250.00, 'https://covers.openlibrary.org/b/title/The%20Time%20Machine-L.jpg'),
(54, 'The Count of Monte Cristo', 1500.00, 'https://covers.openlibrary.org/b/title/The%20Count%20of%20Monte%20Cristo-L.jpg'),
(55, 'The Little Prince', 1200.00, 'https://covers.openlibrary.org/b/title/The%20Little%20Prince-L.jpg'),
(56, 'The Alchemist', 1250.00, 'https://covers.openlibrary.org/b/title/The%20Alchemist-L.jpg'),
(57, 'The Road', 1550.00, 'https://covers.openlibrary.org/b/title/The%20Road-L.jpg'),
(58, 'The Girl with the Dragon Tattoo', 1600.00, 'https://covers.openlibrary.org/b/title/The%20Girl%20with%20the%20Dragon%20Tattoo-L.jpg'),
(59, 'The Da Vinci Code', 1550.00, 'https://covers.openlibrary.org/b/title/The%20Da%20Vinci%20Code-L.jpg'),
(60, 'The Hunger Games', 1600.00, 'https://covers.openlibrary.org/b/title/The%20Hunger%20Games-L.jpg'),
(61, 'The Time Traveler\'s Wife', 1450.00, 'https://covers.openlibrary.org/b/title/The%20Time%20Traveler%27s%20Wife-L.jpg'),
(62, 'The Secret History', 1400.00, 'https://covers.openlibrary.org/b/title/The%20Secret%20History-L.jpg'),
(63, 'The Night Circus', 1500.00, 'https://covers.openlibrary.org/b/title/The%20Night%20Circus-L.jpg'),
(64, 'The Shadow of the Wind', 1550.00, 'https://covers.openlibrary.org/b/title/The%20Shadow%20of%20the%20Wind-L.jpg'),
(65, 'Life After Life', 1450.00, 'https://covers.openlibrary.org/b/title/Life%20After%20Life-L.jpg'),
(66, 'The Goldfinch', 1600.00, 'https://covers.openlibrary.org/b/title/The%20Goldfinch-L.jpg'),
(67, 'The Immortal Life of Henrietta Lacks', 1500.00, 'https://covers.openlibrary.org/b/title/The%20Immortal%20Life%20of%20Henrietta%20Lacks-L.jpg'),
(68, 'All the Light We Cannot See', 1550.00, 'https://covers.openlibrary.org/b/title/All%20the%20Light%20We%20Cannot%20See-L.jpg'),
(69, 'The Girl in the Red Coat', 1380.00, 'https://covers.openlibrary.org/b/title/The%20Girl%20in%20the%20Red%20Coat-L.jpg'),
(70, 'The Book of Joy', 1200.00, 'https://covers.openlibrary.org/b/title/The%20Book%20of%20Joy-L.jpg'),
(72, 'vampire diaries', 1200.00, ''),
(73, 'Diary of a Wimpy Kid', 1400.00, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `email`, `total`, `created_at`) VALUES
(1, 'Kovida', 'N0.115,Swaraj Rd,Issadeen Town,Matara', 'kovidahma@gmail.com', 0.00, '2026-04-01 16:57:44'),
(2, 'thisara nilupul', 'kajjugaskoratuwa,kumbalgoda,hakmana', 'kovidahirunathmaths@gmail.com', 0.00, '2026-04-01 18:16:00'),
(3, 'thisara nilupul', 'kajjugaskoratuwa,kumbalgoda,hakmana', 'kovidahirunathmaths@gmail.com', 0.00, '2026-04-01 18:16:16'),
(4, 'thisara nilupul', 'kajjugaskoratuwa,kumbalgoda,hakmana', 'kovidahirunathmaths@gmail.com', 0.00, '2026-04-01 18:16:26'),
(5, 'thisara', '10/8 l,hakmana', 'kovidahirunathmaths@gmail.com', 0.00, '2026-04-01 18:17:21'),
(6, 'Vikum Ellapitage', 'No.112,Katugasthota,Kandy', 'vikum@gmail.com', 0.00, '2026-04-01 18:47:29'),
(7, 'chamod', 'Dandeniya,Matara', 'chamod@gmail.com', 0.00, '2026-04-01 19:06:39'),
(8, 'thisara', '223 fff', 'kovidahirunathmaths@gmail.com', 0.00, '2026-04-01 19:45:10'),
(9, 'dgfh', 'fghj', 'nilupulthisara6@gmail.com', 0.00, '2026-04-02 12:40:28'),
(10, 'Udeesha', 'Hakmana,Matara', 'Udeesha@gmail.com', 0.00, '2026-04-02 18:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(3, 'kovidahirunathmaths@gmail.com'),
(4, ''),
(5, 'Ashara@gamil.com'),
(6, 'Sanduni@gmail.com'),
(7, 'ThisaraNilupul@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `joined_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `address`, `joined_date`) VALUES
(3, 'Vikum', '$2y$10$AFeRNCKhUw4ZOC1z1L1Slu8VQDH6TkBDPamEtT/L9y2q0TE5Mynwu', 'No:114,Katugasthota,Kandy', '2026-04-02'),
(4, 'Chamod', '$2y$10$4RsDfCU5BBDA6u62MBZsmuBZ0Ayl0L12ZBdwBxJXE0drwSs4RUqle', 'No:100,Dandeniya,Dickwella', '2026-04-02'),
(5, 'Ashara', '$2y$10$x5tWHPKaBQtOudvYftvhz.IdvIF.wrSzfQILoXP9Md69hZvRpAfFm', 'No:112;Bakmeegolla,Kurunegala', '2026-04-02'),
(6, 'Sanduni Udeshika', '$2y$10$DgNokYy/72i/4J1Gr5RhQ.wVyfFYN/ShjQiB7LC.uG4tRJNgSwwk6', 'No:120,Ambalangoda,Galle', '2026-04-02'),
(7, 'Kovida Hirunath', '$2y$10$diSuD2aGYwRwD9y24e9aOeQRx.cwC6I89UUD6EM5FzNtPe4G2gTJu', 'No:115;Swaraj Rd,Issadden Town,Matra', '2026-04-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
