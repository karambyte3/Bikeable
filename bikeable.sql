-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2018 at 10:24 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `image` varchar(128) COLLATE utf8_bin NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `image`, `author_id`) VALUES
(1, 'Test братлето ми wee', '<h1>Lorem ipsum dolor sit amet consectetuer adipiscing \r\nelit</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing \r\nelit. Aenean commodo ligula eget dolor. Aenean massa \r\n<strong>strong</strong>. Cum sociis natoque penatibus \r\net magnis dis parturient montes, nascetur ridiculus \r\nmus. Donec quam felis, ultricies nec, pellentesque \r\neu, pretium quis, sem. Nulla consequat massa quis \r\nenim. Donec pede justo, fringilla vel, aliquet nec, \r\nvulputate eget, arcu. In enim justo, rhoncus ut, \r\nimperdiet a, venenatis vitae, justo. Nullam dictum \r\nfelis eu pede <a class=\"external ext\" href=\"#\">link</a> \r\nmollis pretium. Integer tincidunt. Cras dapibus. \r\nVivamus elementum semper nisi. Aenean vulputate \r\neleifend tellus. Aenean leo ligula, porttitor eu, \r\nconsequat vitae, eleifend ac, enim. Aliquam lorem ante, \r\ndapibus in, viverra quis, feugiat a, tellus. Phasellus \r\nviverra nulla ut metus varius laoreet. Quisque rutrum. \r\nAenean imperdiet. Etiam ultricies nisi vel augue. \r\nCurabitur ullamcorper ultricies nisi.</p>\r\n<h1>Lorem ipsum dolor sit amet consectetuer adipiscing \r\nelit</h1>\r\n<h2>Aenean commodo ligula eget dolor aenean massa</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing \r\nelit. Aenean commodo ligula eget dolor. Aenean massa. \r\nCum sociis natoque penatibus et magnis dis parturient \r\nmontes, nascetur ridiculus mus. Donec quam felis, \r\nultricies nec, pellentesque eu, pretium quis, sem.</p>\r\n<h2>Aenean commodo ligula eget dolor aenean massa</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing \r\nelit. Aenean commodo ligula eget dolor. Aenean massa. \r\nCum sociis natoque penatibus et magnis dis parturient \r\nmontes, nascetur ridiculus mus. Donec quam felis, \r\nultricies nec, pellentesque eu, pretium quis, sem.</p>\r\n<ul>\r\n  <li>Lorem ipsum dolor sit amet consectetuer.</li>\r\n  <li>Aenean commodo ligula eget dolor.</li>\r\n  <li>Aenean massa cum sociis natoque penatibus.</li>\r\n</ul>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing \r\nelit. Aenean commodo ligula eget dolor. Aenean massa. \r\nCum sociis natoque penatibus et magnis dis parturient \r\nmontes, nascetur ridiculus mus. Donec quam felis, \r\nultricies nec, pellentesque eu, pretium quis, sem.</p>\r\n<form action=\"#\" method=\"post\">\r\n  <fieldset>\r\n    <label for=\"name\">Name:</label>\r\n    <input type=\"text\" id=\"name\" placeholder=\"Enter your \r\nfull name\" />\r\n\r\n    <label for=\"email\">Email:</label>\r\n    <input type=\"email\" id=\"email\" placeholder=\"Enter \r\nyour email address\" />\r\n\r\n    <label for=\"message\">Message:</label>\r\n    <textarea id=\"message\" placeholder=\"What\'s on your \r\nmind?\"></textarea>\r\n\r\n    <input type=\"submit\" value=\"Send message\" />\r\n\r\n  </fieldset>\r\n</form>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing \r\nelit. Aenean commodo ligula eget dolor. Aenean massa. \r\nCum sociis natoque penatibus et magnis dis parturient \r\nmontes, nascetur ridiculus mus. Donec quam felis, \r\nultricies nec, pellentesque eu, pretium quis, sem.</p>\r\n<table class=\"data\">\r\n  <tr>\r\n    <th>Entry Header 1</th>\r\n    <th>Entry Header 2</th>\r\n    <th>Entry Header 3</th>\r\n    <th>Entry Header 4</th>\r\n  </tr>\r\n  <tr>\r\n    <td>Entry First Line 1</td>\r\n    <td>Entry First Line 2</td>\r\n    <td>Entry First Line 3</td>\r\n    <td>Entry First Line 4</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Entry Line 1</td>\r\n    <td>Entry Line 2</td>\r\n    <td>Entry Line 3</td>\r\n    <td>Entry Line 4</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Entry Last Line 1</td>\r\n    <td>Entry Last Line 2</td>\r\n    <td>Entry Last Line 3</td>\r\n    <td>Entry Last Line 4</td>\r\n  </tr>\r\n</table>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing \r\nelit. Aenean commodo ligula eget dolor. Aenean massa. \r\nCum sociis natoque penatibus et magnis dis parturient \r\nmontes, nascetur ridiculus mus. Donec quam felis, \r\nultricies nec, pellentesque eu, pretium quis, sem.</p>', 'test.jpg', 1),
(2, 'vtori Post веее', '<div class=\"bullet\">\r\n            <div class=\"description\">\r\n              Handlebars templates look like regular HTML, with embedded\r\n              handlebars expressions.\r\n            </div>\r\n            <pre class=\"sunburst\"><span class=\"MetaTagAll\"><span class=\"MetaTagAll\">&lt;</span><span class=\"MetaTagAll\">div</span> <span class=\"MetaTagAll\">class</span>=<span class=\"String\"><span class=\"String\">\"</span>entry<span class=\"String\">\"</span></span><span class=\"MetaTagAll\">&gt;</span></span>\r\n  <span class=\"MetaTagAll\"><span class=\"MetaTagAll\">&lt;</span><span class=\"MetaTagAll\">h1</span><span class=\"MetaTagAll\">&gt;</span></span><span class=\"EmbeddedSourceBright\">{{title}}</span><span class=\"MetaTagAll\"><span class=\"MetaTagAll\">&lt;/</span><span class=\"MetaTagAll\">h1</span><span class=\"MetaTagAll\">&gt;</span></span>\r\n  <span class=\"MetaTagAll\"><span class=\"MetaTagAll\">&lt;</span><span class=\"MetaTagAll\">div</span> <span class=\"MetaTagAll\">class</span>=<span class=\"String\"><span class=\"String\">\"</span>body<span class=\"String\">\"</span></span><span class=\"MetaTagAll\">&gt;</span></span>\r\n    <span class=\"EmbeddedSourceBright\">{{body}}</span>\r\n  <span class=\"MetaTagAll\"><span class=\"MetaTagAll\">&lt;/</span><span class=\"MetaTagAll\">div</span><span class=\"MetaTagAll\">&gt;</span></span>\r\n<span class=\"MetaTagAll\"><span class=\"MetaTagAll\">&lt;/</span><span class=\"MetaTagAll\">div</span><span class=\"MetaTagAll\">&gt;</span></span>\r\n</pre>\r\n            <div class=\"notes\">\r\n              A handlebars expression is a <code>{{</code>, some contents,\r\n              followed by a <code>}}</code>\r\n            </div>\r\n            <a class=\"more-info\" href=\"expressions.html\">Learn More: Expressions</a>\r\n          </div>', 'hhhh.png', 1),
(5, 'Това си е статия ', '<html>\r\n<!-- Text between angle brackets is an HTML tag and is not displayed.\r\nMost tags, such as the HTML and /HTML tags that surround the contents of\r\na page, come in pairs; some tags, like HR, for a horizontal rule, stand \r\nalone. Comments, such as the text you\'re reading, are not displayed when\r\nthe Web page is shown. The information between the HEAD and /HEAD tags is \r\nnot displayed. The information between the BODY and /BODY tags is displayed.-->\r\n<head>\r\n<title>Enter a title, displayed at the top of the window.</title>\r\n</head>\r\n<!-- The information between the BODY and /BODY tags is displayed.-->\r\n<body>\r\n<h1>Enter the main heading, usually the same as the title.</h1>\r\n<p>Be <b>bold</b> in stating your key points. Put them in a list: </p>\r\n<ul>\r\n<li>The first item in your list</li>\r\n<li>The second item; <i>italicize</i> key words</li>\r\n</ul>\r\n<p>Improve your image by including an image. </p>\r\n<p><img src=\"http://www.mygifs.com/CoverImage.gif\" alt=\"A Great HTML Resource\"></p>\r\n<p>Add a link to your favorite <a href=\"https://www.dummies.com/\">Web site</a>.\r\nBreak up your page with a horizontal rule or two. </p>\r\n<hr>\r\n<p>Finally, link to <a href=\"page2.html\">another page</a> in your own Web site.</p>\r\n<!-- And add a copyright notice.-->\r\n<p>&#169; Wiley Publishing, 2011</p>\r\n</body>', '5555.jpg', 2),
(6, 'Eto we brat oshte', '<style>\r\ntable, th, td {\r\n    border: 1px solid black;\r\n    border-collapse: collapse;\r\n}\r\nth, td {\r\n    padding: 15px;\r\n    text-align: left;\r\n}\r\ntable#t01 {\r\n    width: 100%;    \r\n    background-color: #f1f1c1;\r\n}\r\n</style>\r\n\r\n<h2>Styling Tables</h2>\r\n\r\n<table style=\"width:100%\">\r\n  <tr>\r\n    <th>Firstname</th>\r\n    <th>Lastname</th> \r\n    <th>Age</th>\r\n  </tr>\r\n  <tr>\r\n    <td>Jill</td>\r\n    <td>Smith</td>\r\n    <td>50</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Eve</td>\r\n    <td>Jackson</td>\r\n    <td>94</td>\r\n  </tr>\r\n  <tr>\r\n    <td>John</td>\r\n    <td>Doe</td>\r\n    <td>80</td>\r\n  </tr>\r\n</table>\r\n<br>\r\n\r\n<table id=\"t01\">\r\n  <tr>\r\n    <th>Firstname</th>\r\n    <th>Lastname</th> \r\n    <th>Age</th>\r\n  </tr>\r\n  <tr>\r\n    <td>Jill</td>\r\n    <td>Smith</td>\r\n    <td>50</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Eve</td>\r\n    <td>Jackson</td>\r\n    <td>94</td>\r\n  </tr>\r\n  <tr>\r\n    <td>John</td>\r\n    <td>Doe</td>\r\n    <td>80</td>\r\n  </tr>\r\n</table>\r\n\r\n<div class=\"w3-container\">\r\n  <h2>Card Content</h2>\r\n  <p>Add containers inside the card to create different sections:</p>\r\n\r\n  <div class=\"w3-card-4\" style=\"width:50%;\">\r\n    <header class=\"w3-container w3-blue\">\r\n      <h1>Header</h1>\r\n    </header>\r\n\r\n    <div class=\"w3-container\">\r\n      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n    </div>\r\n\r\n    <footer class=\"w3-container w3-blue\">\r\n      <h5>Footer</h5>\r\n    </footer>\r\n  </div>\r\n</div>', 'sa.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Mitko Kalenderov'),
(2, 'Дедо Крундаки');

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
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`) USING BTREE;

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cycling`
--
ALTER TABLE `cycling`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cycling`
--
ALTER TABLE `cycling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
