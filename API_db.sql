-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 14, 2022 at 03:37 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `API_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `code` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`) VALUES
(1, 'Canada', 'CA'),
(2, 'Uk', 'FR'),
(3, 'India', 'IN');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Classical'),
(3, 'Pop'),
(4, 'Hip-hop');

-- --------------------------------------------------------

--
-- Table structure for table `genre_song`
--

CREATE TABLE `genre_song` (
  `genre_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre_song`
--

INSERT INTO `genre_song` (`genre_id`, `song_id`, `id`) VALUES
(3, 1, 1),
(3, 2, 2),
(2, 3, 3),
(3, 4, 4),
(4, 5, 5),
(1, 6, 6),
(2, 7, 7),
(1, 8, 8),
(3, 9, 9),
(4, 10, 10),
(2, 11, 11),
(2, 12, 12),
(4, 13, 13),
(3, 14, 14),
(1, 15, 15),
(4, 16, 16),
(1, 17, 17),
(2, 18, 18),
(3, 19, 19),
(2, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language_name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_name`) VALUES
(1, 'English'),
(2, 'French'),
(3, 'Spanish'),
(4, 'Hindi');

-- --------------------------------------------------------

--
-- Table structure for table `language_roku`
--

CREATE TABLE `language_roku` (
  `roku_id` int(12) NOT NULL,
  `language_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language_roku`
--

INSERT INTO `language_roku` (`roku_id`, `language_id`) VALUES
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 1),
(14, 4),
(15, 1),
(16, 1),
(17, 1),
(18, 4),
(19, 4),
(20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `language_rokushow`
--

CREATE TABLE `language_rokushow` (
  `rokushow_id` int(12) NOT NULL,
  `language_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language_rokushow`
--

INSERT INTO `language_rokushow` (`rokushow_id`, `language_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 1),
(20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rokumovies`
--

CREATE TABLE `rokumovies` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cover_image` varchar(60) NOT NULL DEFAULT 'default.jpg',
  `title` varchar(100) NOT NULL,
  `release_year` varchar(5) NOT NULL,
  `runtime` varchar(25) NOT NULL,
  `summary` text NOT NULL,
  `preview` varchar(80) NOT NULL DEFAULT 'preview.mp4',
  `release_date` varchar(50) NOT NULL,
  `age_rating` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rokumovies`
--

INSERT INTO `rokumovies` (`id`, `cover_image`, `title`, `release_year`, `runtime`, `summary`, `preview`, `release_date`, `age_rating`) VALUES
(1, 'hate2.jpg', 'Hate Story 2', '2014', '2h 10m', 'A woman takes revenge on a powerful corrupt politician who forcefully abused her and left her for dead.', 'hate2.mp4', 'July 18, 2014', 18),
(2, 'jism.jpg', 'Jism 2', '2000', '2h 28m', 'Izna, a porn star, is tasked by an Indian Intelligence Agency to seduce her ex-boyfriend Kabir, a dreaded assassin, in order to steal vital information relating to his sleeper cell contacts.', 'jism.mp4', 'December 17, 2000', 18),
(3, 'parched.jpg', 'Parched', '2000', '2h 45m', 'In the arid landscape of Rajasthan, four women navigate their way through personal and cultural difficulties.', 'parched.mp4', 'July 20, 2000', 18),
(4, 'eternals.jpg', 'Nasha', '2012', '2h 37m', 'A teenage boy becomes smitten with his new drama teacher and pursues her, despite the perilous risks of being found out.', 'nasha.mp4', 'November 5, 2021', 18),
(5, 'aunt.jpg', 'Aunt tula', '1964', '1h 49m', 'Tula, a 31-year-old single woman whose sister has just died, decides to live in the home of her bank-employee brother-in-law Ramiro and his two children.', 'aunt.mp4', 'September 21, 1964', 16),
(6, 'hunt.jpg', 'The hunt', '1966', '1h 31m', 'The Hunt (in Spanish La Caza) is a 1966 Spanish film directed by Carlos Saura. The film is a psychological thriller about three veterans of the Spanish Civil War who meet to go rabbit hunting.', 'hunt.mp4', '	\r\nNovember 9, 1966', 14),
(7, 'la.jpg', 'La gran familia', '1962', '1h 44m\r\n', 'Carlos and Mercedes, a couple, have fifteen children and they struggle to take care of them. The children\'s grandfather helps the parents raise them.', 'la.mp4', 'December 20, 1962 ', 16),
(8, 'eve.jpg', 'Eve', '1968', 'h 34m', 'Eve is a 1968 thriller film directed by Jeremy Summers and starring Robert Walker, Fred Clark, Herbert Lom, Christopher Lee and introducing Celeste Yarnall as Eve. When the director quit midway through filming, Spanish horror film director Jesus Franco was brought in to finish the job.', 'eve', '12 July 1968', 14),
(9, 'planet.jpg', 'Fantastic Planet', '1973', '1h 12m', 'Fantastic Planet (French: La Planète sauvage, Czech: Divoká planeta, lit. \"The Wild Planet\") is a 1973 experimental adult animated science fiction film, directed by René Laloux and written by Laloux and Roland Topor, the latter of whom also completed the film\'s production design', 'planet.mp4', 'December 6, 1973', 17),
(10, 'heart', 'Murmur of the Heart', '1971 ', '1h 58m\r\n', 'This loosely plotted coming-of-age tale follows the life of 15-year-old Laurent Chevalier (Benoît Ferreux) as he stumbles his way over the burgeoning swell of adolescence in 1950s France.', 'heart.mp4', 'April 28, 1971', 12),
(11, 'cannabis.jpg', 'Cannabis', '1970', '1h 36m\r\n', 'Cannabis is a 1970 crime film directed by Pierre Koralnik. It is a co-production between France, West Germany and Italy.', 'cannabis.mp4', 'September 2, 1970', 17),
(12, 'barocco.jpg', 'Barocco', '1976', '1h 50m', 'Barocco is a 1976 French romantic thriller film, directed by André Téchiné. The film stars Isabelle Adjani, Gérard Depardieu and Marie-France Pisier.', 'barocco.mp4', 'December 8, 1976', 11),
(13, 'hill.jpg', 'Dressed to Kill', '1980', '1h 46m', 'A mysterious blonde woman kills one of a psychiatrist\'s patients, and then goes after the high-class call girl who witnessed the murder.', 'hill.mp4', 'July 25, 1980', 11),
(14, 'hate.jpg', 'Hate story', '2010', '2h 10m', 'Siya appears to be the bone of contention between warring businessmen Aditya and Saurav. But this one runs deeper than your average love triangle.', 'hate.mp4', 'April 15, 2010', 18),
(15, 'shining.jpg', 'The Shining\r\n', '1980 ', '2h 26m\r\n', 'The Shining is a 1980 psychological horror film produced and directed by Stanley Kubrick and co-written with novelist Diane Johnson. ', 'shining.mp4', 'May 23, 1980', 13),
(16, 'fog.jpg', 'The Fog', '1980', '1h 29m', 'The Fog is a 1980 American supernatural horror film directed by John Carpenter, who also co-wrote the screenplay and created the music for the film.', 'fog.mp4', 'February 1, 1980', 13),
(17, 'man.jpg', 'Darkman', '1990', '1h 36m\r\n', 'Darkman is a 1990 American superhero film[4] directed and co-written by Sam Raimi. Based on a short story Raimi wrote that paid homage to Universal\'s horror films of the 1930s, the film stars Liam Neeson as scientist Peyton Westlake, who is brutally attacked, disfigured, and left for dead by ruthless mobster Robert Durant ', 'man.mp4', 'August 24, 1990', 17),
(18, 'ash.jpg', 'Aashiqui', '1990', '2h 32m', 'Aashiqui (transl. Romance) is a 1990 Indian Hindi musical romantic drama film and first installment of Aashiqui series directed by Mahesh Bhatt, starring Rahul Roy, Anu Aggarwal and Deepak Tijori in pivotal roles.', 'ash.mp4', '17 August 1990', 16),
(19, 'dil.jpg', 'Dil', '1990', '2h 25m', 'Dil ( transl. Heart) is a 1990 Indian Hindi-language romantic drama film, starring Aamir Khan, Madhuri Dixit, Anupam Kher, and Saeed Jaffrey.', 'dil.mp4', 'June 22, 1990', 17),
(20, 'aw.jpg', 'Awaargi', '1991', '2h 29m', 'Awaargi is a 1990 Indian Hindi-language drama film directed by Mahesh Bhatt starring Anil Kapoor, Govinda, Meenakshi Sheshadri in lead roles.', 'aw.mp4', ' 26 January 1990', 15);

-- --------------------------------------------------------

--
-- Table structure for table `rokushows`
--

CREATE TABLE `rokushows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cover_image` varchar(60) NOT NULL DEFAULT 'default.jpg',
  `title` varchar(100) NOT NULL,
  `release_year` varchar(5) NOT NULL,
  `runtime` varchar(25) NOT NULL,
  `summary` text NOT NULL,
  `preview` varchar(80) NOT NULL DEFAULT 'preview.mp4',
  `release_date` varchar(50) NOT NULL,
  `age_rating` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rokushows`
--

INSERT INTO `rokushows` (`id`, `cover_image`, `title`, `release_year`, `runtime`, `summary`, `preview`, `release_date`, `age_rating`) VALUES
(1, 'thunder.jpg', 'Thunderbirds', '1965', '2h 32m', 'This classic British science-fiction series follows the missions of the International Rescue team, a life-saving organisation who have advanced technology to aid them in their rescues.', 'thunder.mp4', 'September 30, 1965', 17),
(2, 'tiger.jpg', 'The Tiger Brigades', '1974', '2h 28m', 'The Tiger Brigades is a period crime television series which originally ran between 1974 and 1983. ', 'tiger.mp4', 'December 21, 1974', 17),
(3, 'saint.jpg', 'The Saint', '1962', '2h 45m', 'The Saint is a British mystery spy thriller television series that aired in the United Kingdom on ITV between 1962 and 1969. It was based on the literary character Simon Templar created by Leslie Charteris in the 1920s[2] and featured in many novels over the years.', 'saint.mp4', 'October 4, 1962', 18),
(4, 'thalassa.jpg', 'Thalassa', '1975', '2h 37m', 'Thalassa is a French documentary television series, broadcast for many years on Friday at 8:50 pm on France 3 and presented by Georges Pernoud.', 'thalassa.mp4', 'September 27, 1975', 16),
(5, 'tele.jpg', 'Téléfoot', '1977', '2h 43m', 'Téléfoot is a French football programme produced by TF1 Production for TF1. The programme was created by Pierre Cangioni in 1977 to show French Division 1 highlights.', 'tele.mp4', 'September 16, 1977', 16),
(6, 'soir.jpg', 'Soir 3', '1978', '1h', 'Soir 3 was the late-night newscast of the French public television network France 3. The program, FR3\'s first national news bulletin, was launched in 1978 by its then head of news Jean-Marie Cavada', 'soir.mp4', '29 July, 1978', 18),
(7, 'azul.jpg', 'Verano Azul', '1981', '1h 48m', 'Verano azul (English: Blue Summer) is a Spanish television drama series directed by Antonio Mercero. It was first broadcast on La Primera Cadena of Televisión Española', 'azul.mp4', 'October 11, 1981', 10),
(8, 'rosa.jpg', 'Rosa salvaje', '1987', '1h 55m', 'Rosa salvaje (English title: Wild Rose) (Spanish pronunciation: [ˈrosa salˈβaxe]; is a Mexican telenovela produced by Valentín Pimstein for Televisa.', 'rosa.mp4', 'July 6, 1987', 14),
(9, 'jun.jpg', 'Juncal', '1989', '2h 23m', 'Paco Rabal incarnates bullfighter Juncal, a rogue, a womanizer, tender yet shameless, friendly, with great spirit. ', 'jun.mp4', 'February 18, 1989', 17),
(10, 'turno.jpg', 'Turno de oficio', '1986', '2h 12m', 'Turno de oficio es una serie de televisión, producida por B.M.G. Films para Televisión Española y emitida entre el 7 de octubre de 1986 y el 28 de enero de 1987 por TVE-2. Dirigida por Antonio Mercero, fue el primer trabajo en televisión de Juan Echanove, que poco antes se había dado a conocer con Tiempo de silencio.', 'turno.mp4', 'October 7, 1986', 12),
(11, 'baat.jpg', 'Banegi Apni Baat', '1993', '2h 36m', 'Banegi Apni Baat is an Indian television drama series that aired on Zee TV from 1993 running to 1997. The series was produced by Tony Singh and Deeya Singh.', 'baat.mp4', 'January 8, 1993', 18),
(12, 'hum .jpg', 'Hum Paanch', '1995', '2h 4m', 'Hum Paanch ( transl. We Five) is an Indian sitcom that first aired from 1995 to 1999. The series returned for a second season from 2005 to 2006.', 'hum.mp4', 'March 7, 1995', 11),
(13, 'maha.jpg', 'Mahabharat', '1998', '2h 42m', 'A mythological tale about the great war fought between the Pandava princes and their scheming cousins, the Kaurava kings.', 'maha.mp4', 'October 2, 1998', 11),
(14, 'hazel.jpg', 'Hazel', '1961', '1h 46m', 'Hazel is an American sitcom about a spunky live-in maid named Hazel Burke (played by Shirley Booth) and her employers, the Baxters.', 'hazel.mp4', 'September 28, 1961', 17),
(15, 'prisoner.jpg', 'The Prisoner', '1967', '2h 16m', 'The Prisoner (known only as Number Six) is a former government agent who abruptly resigns from his job and has been imprisoned in a beautiful and charming-yet-bizarre and enigmatic community -- a mysterious seaside \"village\" that is isolated from the mainland by mountains and the sea', 'prisoner.mp4', 'September 29, 1967', 15),
(16, 'fam.jpg', 'Family No.1\r\n', '1998', '2h 23m', 'Family No. 1 is an Indian comedy television series which aired on Sony Entertainment Television from 1998 to 1999, starring Kanwaljeet Singh and Tanvi Azmi.', 'fam.mp4', 'September 29, 1998', 13),
(17, 'tarak.jpg', 'Tarak Mehat ka Oolta chashma', '2008', '2h 10m', 'The residents of a housing society help each other find solutions when they face common real-life challenges and get involved in sticky situations.', 'tarak.mp4', 'July 28, 2008', 12),
(18, 'shak.jpg', 'Shaka Laka Boom Boom', '2000', '1h 30m', 'Anything that is drawn using the magical pencil found by Sanju, a young boy, becomes a reality. Soon, Sanju finds himself battling many evil forces who wish to misuse the pencil.', 'shak.mp4', 'October 15, 2000', 15),
(19, 'hannah.jpg', 'Hannah Montana', '2006', '1h 33m', 'Although she appears to be just a typical teenager to most of her classmates and teachers, Miley Stewart lives a double life, transforming herself into famous pop singer Hannah Montana at night.', 'hannah.mp4', 'March 24, 2006', 18),
(20, 'skin.jpg', 'Skins', '2007', '1h 58m', 'The lives of a group of teenagers in Bristol, England, are followed through two years of sixth form, with the story line of this critically acclaimed series delving into such controversial subjects as substance abuse, sexuality, teenage pregnancy, personality and eating disorders, and mental illness.', 'skin.mp4', 'January 25, 2007', 15);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `release_year` int(5) NOT NULL,
  `duration` int(11) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `release_year`, `duration`, `country_id`) VALUES
(1, 'La Madrague', 1962, 236, 2),
(2, 'He\'ll Have to Go', 1960, 211, 1),
(3, 'Cathy\'s Clown', 1960, 420, 1),
(4, 'Satisfaction', 1985, 325, 1),
(5, 'Bade Achhe Lagte Hain ', 1976, 423, 3),
(6, 'Kya Hua Tera Vada\r\n', 1977, 425, 3),
(7, 'Pal Pal Dil Ke Pas\r\n', 1973, 456, 3),
(8, 'Joe le taxi', 1988, 355, 2),
(9, 'Les Avions', 1980, 357, 2),
(10, 'Main Shair To Nahin\r\n', 1973, 505, 3),
(11, 'Désenchantée', 1991, 408, 2),
(12, 'Deewana Tera', 1991, 417, 3),
(13, 'O Sanam', 1990, 416, 3),
(14, 'Marcia baila', 1984, 520, 2),
(15, 'He Could Be the One', 2009, 405, 1),
(16, 'You Oughta Know', 1995, 330, 1),
(17, 'Who said', 2006, 314, 1),
(18, 'Bin tere', 2014, 320, 3),
(19, 'Jeena Jeena', 2016, 402, 3),
(20, 'Lag ja gale', 2012, 356, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre_song`
--
ALTER TABLE `genre_song`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_roku`
--
ALTER TABLE `language_roku`
  ADD PRIMARY KEY (`roku_id`);

--
-- Indexes for table `language_rokushow`
--
ALTER TABLE `language_rokushow`
  ADD PRIMARY KEY (`rokushow_id`);

--
-- Indexes for table `rokumovies`
--
ALTER TABLE `rokumovies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rokushows`
--
ALTER TABLE `rokushows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `genre_song`
--
ALTER TABLE `genre_song`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `rokumovies`
--
ALTER TABLE `rokumovies`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rokushows`
--
ALTER TABLE `rokushows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
