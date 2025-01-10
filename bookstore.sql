-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 27, 2024 at 05:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `price`, `category`) VALUES
(24, 'To Kill a Mockingbird', 'Harper Lee', 'A classic novel of a young girl growing up in the South during the 1930s.', 10.99, 'Fiction'),
(25, '1984', 'George Orwell', 'A chilling portrayal of a totalitarian regime.', 9.99, 'Dystopian'),
(26, 'The Great Gatsby', 'F. Scott Fitzgerald', 'A tragic story of wealth and ambition in 1920s America.', 12.50, 'Classics'),
(27, 'Pride and Prejudice', 'Jane Austen', 'A timeless tale of love and misunderstandings.', 8.99, 'Romance'),
(28, 'The Catcher in the Rye', 'J.D. Salinger', 'A story of teenage angst and rebellion.', 11.50, 'Fiction'),
(30, 'War and Peace', 'Leo Tolstoy', 'A panoramic novel about Russian society during the Napoleonic era.', 15.99, 'Historical'),
(31, 'The Hobbit', 'J.R.R. Tolkien', 'A prelude to The Lord of the Rings, filled with adventure and treasure.', 14.99, 'Fantasy'),
(32, 'Crime and Punishment', 'Fyodor Dostoevsky', 'A psychological exploration of morality and redemption.', 10.50, 'Philosophical'),
(33, 'The Alchemist', 'Paulo Coelho', 'A tale of self-discovery and following your dreams.', 8.50, 'Fiction'),
(34, 'The Book Thief', 'Markus Zusak', 'A moving story set in Nazi Germany.', 9.75, 'Historical Fiction'),
(35, 'Jane Eyre', 'Charlotte Brontë', 'A gothic romance of independence and love.', 10.99, 'Romance'),
(36, 'The Chronicles of Narnia', 'C.S. Lewis', 'A magical series of adventures in a mystical land.', 25.99, 'Fantasy'),
(37, 'The Road', 'Cormac McCarthy', 'A harrowing journey of a father and son.', 12.99, 'Post-Apocalyptic'),
(38, 'Brave New World', 'Aldous Huxley', 'A prophetic look at a controlled society.', 10.25, 'Dystopian'),
(39, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'The beginning of the magical Harry Potter series.', 15.99, 'Fantasy'),
(40, 'The Kite Runner', 'Khaled Hosseini', 'A story of friendship, betrayal, and redemption.', 9.99, 'Drama'),
(41, 'Wuthering Heights', 'Emily Brontë', 'A tempestuous tale of love and revenge.', 8.99, 'Classics');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
