-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2018 at 09:06 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikeable`
--

-- --------------------------------------------------------

--
-- Table structure for table `cycling`
--

CREATE TABLE `cycling` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `time_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cycling`
--

INSERT INTO `cycling` (`id`, `name`, `content`, `time_created`) VALUES
(1, 'yt', '<div class=\"wrapper\">\r\n    <div id=\"article-container\">\r\n        <div id=\"main\" align=\"center\">\r\n            <h1>YT - Живей без окови!</h1>\r\n            <p>Това е историята на YT Industries - един от най-бързо развиващите се велопроизводители в последните години -\r\n                и тя е добър пример за всеки, който иска да последва мечтите си, вместо да кара само по утъпканите от обществото\r\n                пътеки.</p>\r\n        </div>\r\n\r\n        <div id=\"content\">\r\n            <iframe width=\"560\" height=\"500\" src=\"https://www.youtube.com/embed/3KW6ofE5v9c?rel=0\" frameborder=\"0\" allow=\"autoplay; encrypted-media\"\r\n                allowfullscreen>\r\n            </iframe>\r\n            <p>\r\n                Днес YT Industries e марка, популярна в цял свят, спонсор на някои от най-големите имена в спорта, с продажби за милиони\r\n                в десетки държави. Преди десет години обаче, когато Маркус Флосман създава първата серия Dirt Jump велосипеди,\r\n                той изобщо не си е поставял подобни цели.\r\n            </p>\r\n            <p>\r\n                Идеята за достъпен DJ твърдак го осенява на самите скокове, когато от младежите там разбира, че те просто не могат да си\r\n                позволят марков велосипед от германски производител. Затова и името на компанията, която той създава, е Young\r\n                Talent Industries.\r\n            </p>\r\n            <p>\r\n                Едва след успеха на тази първа серия Маркус разбира, че идеята му има далеч по-голям потенциал от очакваното и решава да\r\n                обърне гръб на подредения живот и предначертаното кариерно израстване, за да последва страстта си и да доразвие\r\n                марката.\r\n            </p>\r\n            <p>\r\n                По-късно, за да създаде и велосипеди с двойно окачване, Маркус привлича Щефан Виларед. Ражда се първият DH байк на компанията\r\n                (спомням си, че аз лично едва тогава за първи път срещнах марката някъде из чуждестранните медии). Постепенно\r\n                името YT започва да става разпознаваемо и извън Германия, а моделът с директни продажби през интернет, който\r\n                компанията използва, се оказва все по-удобен и търсен от потребителите. Появяват се модели като Tues 2.0\r\n                (за спускане) и Wicked (ендуро), а компанията привлича като спонсориран спортист един от най-популярните\r\n                фрийрайдъри - испанеца Андреу Лакондеги.\r\n            </p>\r\n            <p>\r\n                По-новата история на марката вече е добре позната на много от читателите ни - моделите Capra, Tues и Jeffsy са сред най-често\r\n                обсъжданите варианти за покупка, водач на DH отбора YT Mob е петкратният носител на Световната купа Аарън\r\n                Гуин, а както признава самият Флосман, разрастващият се екип на компанията е толкова зает с бъдещите проекти\r\n                и текущата работа, че не им остава време да хвърлят поглед назад и да мислят какво са постигнали за тези\r\n                десетина години.\r\n            </p>\r\n            <p>\r\n                Във всички случаи обаче Маркус и колегите му се стремят да запазят онзи първоначален дух, онези ценности, които са го подтикнали\r\n                да създаде YT. Компанията преследва успехите в състезанията и подкрепя някои от най-добрите карачи в света,\r\n                но търси и младите таланти, които да израснат заедно с нея; старае се да прави велосипеди, които са сред\r\n                най-добрите на пазара, но не забравя, че те трябва да са и достъпни за потребителите. YT продължава да пропагандира\r\n                доброто каране, силните емоции и свободния дух, затова и този документален филм е кръстен по този начин.\r\n            </p>\r\n        </div>\r\n    </div>\r\n\r\n</div>', '2018-04-05 18:26:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cycling`
--
ALTER TABLE `cycling`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cycling`
--
ALTER TABLE `cycling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
