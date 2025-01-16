-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 16, 2025 at 06:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
  `category` varchar(255) DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `like_count` int(11) DEFAULT 0,
  `dislike_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `price`, `category`, `long_description`, `like_count`, `dislike_count`) VALUES
(24, 'To Kill a Mockingbird', 'Harper Lee', 'A classic novel of a young girl growing up in the South during the 1930s.', 10.99, 'Fiction', 'To Kill a Mockingbird is a Pulitzer Prize-winning novel by Harper Lee, set in the 1930s in the fictional town of Maycomb, Alabama. It follows the story of Scout Finch, a young girl who witnesses the racial tensions and injustice in her town as her father, lawyer Atticus Finch, defends a black man accused of raping a white woman. Through the eyes of Scout, we see themes of racial inequality, moral growth, and the loss of innocence as the characters grapple with prejudice and corruption in their community.', 1, 0),
(25, '1984', 'George Orwell', 'A chilling portrayal of a totalitarian regime.', 9.99, 'Dystopian', '1984 is a dystopian novel by George Orwell that explores the dangers of totalitarianism and oppressive government control. Set in a future society where \"Big Brother\" watches every move, the protagonist, Winston Smith, works for the Party in rewriting history to suit its agenda. Despite the Party’s control over thoughts, Winston begins to question the reality imposed on him. As he embarks on a dangerous affair with Julia, he faces the horrifying truth of the regime and its power to shape truth itself. The novel is a profound commentary on surveillance, freedom, and the consequences of unchecked power.', 1, 0),
(26, 'The Great Gatsby', 'F. Scott Fitzgerald', 'A tragic story of wealth and ambition in 1920s America.', 12.50, 'Classics', 'The Great Gatsby, written by F. Scott Fitzgerald, is a tragic tale of wealth, love, and ambition set in the roaring 1920s. The story revolves around Jay Gatsby, a mysterious millionaire known for his lavish parties, who is in love with Daisy Buchanan, a woman he met before going off to war. Gatsby’s unrelenting pursuit of Daisy represents the American Dream’s false promise. Narrated by Nick Carraway, Gatsby’s neighbor, the novel highlights the emptiness of materialism and the dangers of idealism in the pursuit of happiness.', 0, 0),
(27, 'Pride and Prejudice', 'Jane Austen', 'A timeless tale of love and misunderstandings.', 8.99, 'Romance', 'Pride and Prejudice by Jane Austen is a beloved romance novel that delves into the societal expectations and complexities of love, marriage, and class in early 19th-century England. The story follows the spirited Elizabeth Bennet and her evolving relationship with the enigmatic Mr. Darcy. Initially, Elizabeth judges Darcy to be arrogant and prideful, but as she learns more about him, her feelings shift. The novel explores themes of self-discovery, misunderstandings, and the conflict between personal desires and social pressures. Its wit, charm, and profound social commentary have made it a timeless classic.', 0, 0),
(28, 'The Catcher in the Rye', 'J.D. Salinger', 'A story of teenage angst and rebellion.', 11.50, 'Fiction', 'The Catcher in the Rye by J.D. Salinger is a profound exploration of teenage angst, rebellion, and the alienation of growing up. The story is told through the voice of Holden Caulfield, a disillusioned and troubled teenager who has just been expelled from a prestigious prep school. As Holden wanders New York City, he grapples with depression, isolation, and his fear of the adult world. The novel captures the universal struggle for identity and meaning in the face of an often indifferent or hypocritical society. It remains an iconic coming-of-age story.', 0, 0),
(30, 'War and Peace', 'Leo Tolstoy', 'A panoramic novel about Russian society during the Napoleonic era.', 15.99, 'Historical', 'War and Peace, written by Leo Tolstoy, is a sweeping historical epic that explores the lives of Russian aristocrats during the Napoleonic Wars. The novel is a mosaic of interconnected characters, including Pierre Bezukhov, an awkward and idealistic young man; Natasha Rostova, a passionate and impulsive woman; and Prince Andrei Bolkonsky, a disillusioned soldier. As these characters navigate war, love, loss, and personal growth, Tolstoy examines the complexities of human nature, the impact of historical events, and the pursuit of happiness.', 0, 0),
(31, 'The Hobbit', 'J.R.R. Tolkien', 'A prelude to The Lord of the Rings, filled with adventure and treasure.', 14.99, 'Fantasy', 'The Hobbit by J.R.R. Tolkien is a fantasy adventure novel that tells the story of Bilbo Baggins, a reluctant hobbit who embarks on an unexpected journey. He is recruited by the wizard Gandalf and a group of dwarves to help reclaim their homeland from the dragon Smaug. Along the way, Bilbo encounters trolls, elves, goblins, and the enigmatic creature Gollum. The novel explores themes of courage, friendship, and the triumph of good over evil, all set in the richly imagined world of Middle-earth. It serves as a prelude to Tolkien’s later epic, The Lord of the Rings.', 0, 0),
(32, 'Crime and Punishment', 'Fyodor Dostoevsky', 'A psychological exploration of morality and redemption.', 10.50, 'Philosophical', 'Crime and Punishment by Fyodor Dostoevsky is a philosophical novel that explores the psychological torment of Rodion Raskolnikov, a young student who commits a murder. Raskolnikov believes that certain individuals have the right to commit crimes for the greater good, but his guilt and paranoia soon unravel him. As he grapples with his actions and the moral dilemmas they create, the novel delves into themes of morality, justice, and redemption, questioning the boundaries of right and wrong.', 0, 0),
(33, 'The Alchemist', 'Paulo Coelho', 'A tale of self-discovery and following your dreams.', 8.50, 'Fiction', 'The Alchemist by Paulo Coelho is an allegorical novel that follows Santiago, a shepherd from Spain, as he embarks on a journey to find treasure. Along the way, he learns profound lessons about life, destiny, and the pursuit of one’s personal legend. The novel is filled with symbolic elements, including the journey through the desert and the search for the philosopher’s stone, that reflect the universal human quest for meaning and fulfillment. Coelho’s story encourages readers to follow their dreams and listen to their hearts, teaching that the true treasure lies within.', 0, 0),
(34, 'The Book Thief', 'Markus Zusak', 'A moving story set in Nazi Germany.', 9.75, 'Historical Fiction', 'The Book Thief by Markus Zusak is set in Nazi Germany during World War II and tells the story of Liesel Meminger, a young girl who steals books to escape the horrors of war. Liesel is taken in by foster parents Hans and Rosa Hubermann, who teach her to read and find solace in books. Narrated by Death, the novel poignantly depicts the impact of war on ordinary people and the power of literature to provide hope and resilience in the face of unimaginable loss.', 0, 0),
(35, 'Jane Eyre', 'Charlotte Brontë', 'A gothic romance of independence and love.', 10.99, 'Romance', 'Jane Eyre by Charlotte Brontë is a gothic romance that follows the journey of an orphaned girl who overcomes hardship to find love and independence. Jane grows up in the harsh care of her aunt and later attends Lowood School, where she forms a strong sense of self. Eventually, she becomes a governess at Thornfield Hall, where she meets the brooding and mysterious Mr. Rochester. Their love story is fraught with secrets, including a dark hidden past that threatens their future together. The novel explores themes of love, morality, and the search for self-identity.', 0, 0),
(36, 'The Chronicles of Narnia', 'C.S. Lewis', 'A magical series of adventures in a mystical land.', 25.99, 'Fantasy', 'The Chronicles of Narnia by C.S. Lewis is a beloved series of seven fantasy novels that chronicle the adventures of children who are transported to the magical land of Narnia. Through the wardrobe in the home of Professor Kirke, siblings Peter, Susan, Edmund, and Lucy discover Narnia and become key figures in its battle between good and evil. The books, rich in allegory and Christian themes, explore the power of courage, loyalty, and faith as the children face magical creatures, witches, and battles to restore peace to Narnia.', 0, 0),
(37, 'The Road', 'Cormac McCarthy', 'A harrowing journey of a father and son.', 12.99, 'Post-Apocalyptic', 'The Road by Cormac McCarthy is a haunting and poetic novel set in a post-apocalyptic world. The story follows a father and son as they journey through a desolate landscape, struggling to survive in a world devoid of life and hope. As they navigate through harsh conditions, they encounter thieves, cannibals, and the constant threat of death. Despite the bleakness, the bond between father and son is a powerful testament to love, survival, and humanity’s will to endure even in the most hopeless of circumstances.', 0, 0),
(38, 'Brave New World', 'Aldous Huxley', 'A prophetic look at a controlled society.', 10.25, 'Dystopian', 'Brave New World by Aldous Huxley presents a vision of a future society where technology and state control dictate every aspect of life. In this world, people are genetically engineered and conditioned to accept their roles without question. The novel follows Bernard Marx, an outsider who questions the society’s values, and John, a “savage” raised outside the system, who is brought to the “civilized” world. The novel explores themes of freedom, individuality, and the cost of technological progress in the pursuit of happiness.', 0, 0),
(39, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'The beginning of the magical Harry Potter series.', 15.99, 'Fantasy', 'Harry Potter and the Sorcerer\'s Stone by J.K. Rowling is the first book in the widely beloved Harry Potter series. The story follows Harry, a young orphaned boy who discovers he is a wizard on his eleventh birthday. He attends Hogwarts School of Witchcraft and Wizardry, where he learns magic and uncovers the dark secrets surrounding his parents’ death. As Harry and his friends Ron and Hermione investigate, they confront the dark wizard Voldemort, who is determined to return to power. The book is a magical journey of friendship, bravery, and self-discovery.', 0, 0),
(40, 'The Kite Runner', 'Khaled Hosseini', 'A story of friendship, betrayal, and redemption.', 9.99, 'Drama', 'The Kite Runner by Khaled Hosseini is a moving and emotional novel about friendship, betrayal, and redemption. The story is set in Afghanistan and follows the life of Amir, a boy from a privileged family, and his close friend Hassan, the son of his servant. After a moment of betrayal, Amir’s guilt haunts him throughout his life. As an adult living in the United States, he returns to Afghanistan to seek redemption. The novel explores the deep emotional bonds that define human relationships, the impact of guilt, and the search for forgiveness.', 0, 0),
(41, 'Wuthering Heights', 'Emily Brontë', 'A tempestuous tale of love and revenge.', 8.99, 'Classics', 'A tempestuous tale of love and revenge, focusing on the passionate and destructive relationship between Heathcliff and Catherine Earnshaw.', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `book_id`, `quantity`) VALUES
(20, 1, 24, 2),
(21, 1, 25, 2),
(22, 1, 26, 2),
(23, 1, 27, 2),
(24, 1, 28, 2),
(25, 1, 30, 1),
(26, 3, 25, 1),
(27, 3, 26, 1),
(28, 3, 24, 1),
(29, 4, 32, 1),
(30, 4, 35, 1),
(31, 4, 33, 1),
(32, 4, 36, 1),
(33, 4, 34, 1),
(34, 5, 24, 1),
(35, 5, 25, 1),
(36, 5, 26, 1),
(37, 5, 30, 1),
(38, 5, 28, 1),
(39, 5, 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'testuser', 'test@example.com', 'hashedpassword', '2025-01-16 15:30:55'),
(2, 'Sumana', 'sumanadhi17@gmail.com', '$2y$10$4nWZwrmHMKluZckO4K8K7OSxVy8m3i9nFJNj9EJXWQYA.zFRvBo92', '2025-01-16 15:32:13'),
(3, 'Diana Prince', 'diana.prince@themyscira.com', '$2y$10$lrCjtbKL/dJyfZ0culDkruavwlDZtZ3ugNN7V6nmCQVPrO6R.OsKW', '2025-01-16 16:50:22'),
(4, 'Natasha Romanoff', 'natasha@shield.com', '$2y$10$fIdVCfvr3q7TPcwKzQdySOh6eFa/pAh1ceqaldei0Yu8FKknspflK', '2025-01-16 17:04:42'),
(5, 'Carol Danvers', 'carol@avenger.com', '$2y$10$PzOZM86YNyyF3EZzoqiiJ.ekarKG99M99GW2GYBrDXrh6qSP218wa', '2025-01-16 17:05:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
