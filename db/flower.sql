-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 06:35 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flower`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(27, 'Flowers', ''),
(28, 'Ocassions', ''),
(29, 'Cakes', ''),
(30, 'Mother\'s Day', ''),
(31, 'Hampers', ''),
(32, 'Gifts', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(41, 30, 70, 1),
(42, 31, 65, 1),
(43, 32, 70, 1),
(44, 33, 66, 1),
(45, 34, 66, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(66, 27, 'La Vie En Rose', '<p>A bouquet of red roses accompanied by white statice. A bouquet wrapped to perfection and suitable for any occasions as red roses simply symbolizes your passion, true love and desire while leaving the white statice to portray your utmost sincerity. This is the go-to gift that expresses your love and intentions without having to say a word.</p>\r\n\r\n<p>Blooms:</p>\r\n\r\n<ul>\r\n	<li>Red Roses</li>\r\n	<li>White Statice</li>\r\n</ul>\r\n', 'la-vie-en-rose', 7, 'la-vie-en-rose_1682437647.png', '2023-04-25', 2),
(67, 27, 'Sweet Pea', '<p>As sweet as the bouquet looks, the message that comes with it is just as sweet! Show your loyalty and honesty with these beautiful white ping-pong flowers while allowing the eustomas express joy and happiness for your loved one.</p>\r\n\r\n<p>Blooms:</p>\r\n\r\n<ul>\r\n	<li>3 White Ping Pong</li>\r\n	<li>Two-toned Pink Eustoma</li>\r\n</ul>\r\n', 'sweet-pea', 55, 'sweet-pea_1682437877.png', '2023-04-25', 6),
(69, 27, 'Sweet Desire', '<p>This fragrant flower bouquet is blooming with pink lilies, eustomas and alstromerias. They are commonly known to express your love and appreciation for your beloved friends.</p>\r\n', 'sweet-desire', 35, 'sweet-pie_1682437935.png', '2023-04-25', 2),
(70, 27, 'Sweet kisses', '<p>This fragrant flower bouquet is blooming with pink lilies, eustomas and alstromerias. They are commonly known to express your love and appreciation for your beloved friends. Send your best wishes with Sweet Desire and allow our fresh blooms to convey your heartfelt emotions.</p>\r\n\r\n<p>Blooms :</p>\r\n\r\n<ul>\r\n	<li>Pink Lilies</li>\r\n	<li>Eustomas</li>\r\n	<li>Alstromerias</li>\r\n</ul>\r\n', 'sweet-kisses', 56, 'sweet-kisses_1682437691.jpg', '2023-04-22', 1),
(75, 31, 'Raya Hamper', '<p>Send them your sweet wishes for this year&#39;s Eid - with a truly delightful gift box, filled with Raya favourites! Scrumptious makmur and cornflake cookies, premium dried fruits and nuts, and HH&#39;s sublime Fruity Organic Tea make for a heartfelt gift set full of warm wishes for your friends, family, and colleagues.</p>\r\n\r\n<p><strong>Inside this hamper:</strong></p>\r\n\r\n<ul>\r\n	<li>HH Bright &amp; Fruity Organic Tea</li>\r\n	<li>QOOM Crunchy Cornflake</li>\r\n	<li>QOOM Makmur Cookies</li>\r\n	<li>Roasted Almond Nuts Jar</li>\r\n	<li>Roasted Cashew Nuts Jar</li>\r\n	<li>Roasted Mix Dried Fruits 130g</li>\r\n	<li>YT - Kurma Mariami Prima - Pouch Pack (300gm)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'raya-hamper', 199, 'raya-hamper_1682438080.png', '2023-04-25', 5),
(76, 28, 'Surprise Birthday Package', '<p>The sweetest surprise ever, made just for that special birthday girl! Featuring our stunning La Vie En Rose flower bouquet, paired with a truly decadent Chocolate Devil Cheesecake, and a bright birthday balloon - our Surprise Birthday Package is a gift for all your celebratory needs.</p>\r\n\r\n<p>Content:</p>\r\n\r\n<ul>\r\n	<li><strong>La Vie En Rose Flower&nbsp;Bouquet</strong></li>\r\n	<li><strong>6&quot; Chocolate Devil Cheese Cake (by Wonderful Cake)</strong></li>\r\n	<li><strong>Happy Birthday Balloon (diameter c. 40cm)</strong></li>\r\n</ul>\r\n', 'surprise-birthday-package', 159, 'surprise-birthday-package.png', '0000-00-00', 0),
(77, 28, 'Sunkissed', '<p>A sweet surprise that you can give any day of the week for any occasion without having to break the bank! A beautiful and simple bouquet that can sweeten the birthday celebrant, make someone smile as a sorry gift, or to delight your significant other!</p>\r\n\r\n<p>Blooms:</p>\r\n\r\n<ul>\r\n	<li>Orange Roses</li>\r\n	<li>Sunflower</li>\r\n	<li>Red Berry</li>\r\n	<li>Ferrero Rocher (2 pieces)</li>\r\n</ul>\r\n', 'sunkissed', 88, 'sunkissed.png', '0000-00-00', 0),
(78, 28, 'Starlight', '<p>Make someone smile the widest with this lovingly arranged boxed flowers that represent your love or friendship.</p>\r\n\r\n<p>Blooms:</p>\r\n\r\n<ul>\r\n	<li>White Roses</li>\r\n	<li>Purple Roses</li>\r\n	<li>Two-Tone Purple Eustoma</li>\r\n	<li>Eucalyptus Baby Blue</li>\r\n	<li>Murraya Leafs</li>\r\n</ul>\r\n\r\n<p>Box:</p>\r\n\r\n<ul>\r\n	<li>Sleek Black color</li>\r\n	<li>Embellished with copper color words</li>\r\n</ul>\r\n', 'starlight', 129, 'starlight.png', '2023-04-25', 1),
(79, 32, 'My Sweet Love', '<p>For the sweetest person in your life, there&#39;s no better gift than a line-up of all things irresistibly delicious and sweet - to make them smile twice as bright. My Sweet Love is our delicious gift box brimming with lush Lindt chocolates, Godiva Milk Chocolate G Cubes, Ferrero Rochers and a scrumptious gift set of aromatic Famous Amos cookies!</p>\r\n\r\n<p><strong>*Please note that the Godiva Milk Chocolate G Cubes may be replaced with another Godiva flavour depending on availability</strong></p>\r\n', 'my-sweet-love', 135, 'my-sweet-love.png', '0000-00-00', 0),
(80, 29, 'Purple Hues Bouquet + Chocolate Devil Cheese Cake', '<p>Make it the perfect gift when you order it with a cake, including:</p>\r\n\r\n<ul>\r\n	<li>Purple Hues Bouquet</li>\r\n	<li>Chocolate Devil Cheese Cake (by Wonderful Cake)</li>\r\n	<li>Klang Valley exclusive</li>\r\n	<li>Not available for Sunday delivery</li>\r\n</ul>\r\n\r\n<p>Cake size approx. 16cm x&nbsp;16cm</p>\r\n', 'purple-hues-bouquet-chocolate-devil-cheese-cake', 168, 'purple-hues-bouquet-chocolate-devil-cheese-cake.png', '2023-04-25', 2),
(81, 30, 'Mama Gift Set [Limited Edition]', '<p>Honour the #1 mama in the world with a marvellous memento, filled with sweetness and love! Our Dreamy Mother&#39;s Day flower box takes centre-stage in this gorgeous gift set, accompanied by our premium customizable cushion and mug. This Mother&#39;s Day, celebrate her with a gift that&#39;s as wonderfully beautiful and unique as she is, made with love - straight from your heart.</p>\r\n\r\n<p>Mug:</p>\r\n\r\n<ul>\r\n	<li>A customized mug is sure to be a statement piece on your shelf.</li>\r\n	<li>Printed with heat transfer printing. The color is coated in outer appearance only.</li>\r\n	<li><strong>Material:</strong>&nbsp;Porcelain</li>\r\n	<li><strong>Weight:</strong>&nbsp;Approximately 450g inclusive protective plastic &amp; box.</li>\r\n	<li><strong>Capacity:</strong>&nbsp;Standard 11 oz or 330ml</li>\r\n	<li><strong>Printing Area:</strong>&nbsp;21cm x 9cm / 8.2&quot; x 3.5&quot;</li>\r\n	<li><strong>Color:</strong>&nbsp;White</li>\r\n</ul>\r\n\r\n<p>Cushion:</p>\r\n\r\n<ul>\r\n	<li>Comes with a hidden zipper enclosure.</li>\r\n	<li>High durability machine washable cover and inner micro fiber cushion included.</li>\r\n	<li><strong>Dimensions:</strong>&nbsp;40cm x 40cm / 15.7&quot; x 15.7&quot;</li>\r\n	<li><strong>Cover Material:</strong>&nbsp;100% Polyester</li>\r\n	<li><strong>Printing area:</strong>&nbsp;20cm x 20cm / 7.9&quot; x 7.9&quot; printable area in the middle of one side of the cover</li>\r\n	<li><strong>Weight:</strong>&nbsp;Approximately 350g.</li>\r\n</ul>\r\n\r\n<blockquote>\r\n<p>Set Include:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>1&nbsp;<strong>&quot;Mom&#39;s Memory Mug [Limited Edition]&quot;</strong></li>\r\n	<li>1&nbsp;<strong>&quot;Mother&#39;s Day Cushion&quot;</strong></li>\r\n	<li>1&nbsp;<strong>&quot;Dreamy&quot;</strong>Flower Arrangement</li>\r\n</ul>\r\n\r\n<p><em><strong>**Please note:</strong>&nbsp;This mug with a&nbsp;<strong>heart-shaped</strong>&nbsp;handle is&nbsp;<strong>limited edition</strong>&nbsp;&amp; only available in Malaysia.</em></p>\r\n</blockquote>\r\n', 'mama-gift-set-limited-edition', 187, 'mama-gift-set-limited-edition.png', '2023-04-25', 1),
(82, 30, 'Ariana', '<p>Wonderfully uplifting, our vibrant Ariana arrangement is the one that you need if you&#39;re looking to delightfully surprise a loved one! With hues of exuberant pinks and yellows, it is made complete with lively greens, thanks to its eucalyptus stems.</p>\r\n\r\n<blockquote>\r\n<p>&nbsp;Bloom:</p>\r\n\r\n<ul>\r\n	<li>Pink Lily</li>\r\n	<li>Pink Alstroemeria</li>\r\n	<li>3 White Carnation</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p><em><strong>*Flowers stems are trimmed to fit the stalks into floral foams for arrangement purposes. Stems shown in the picture are for illustration purposes only.</strong></em></p>\r\n', 'ariana', 89, 'ariana.png', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL,
  `sales_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`, `sales_status`) VALUES
(32, 13, 'PAYID-MDM2X2Q0SR114621G865233R', '2023-03-25', 'Collected'),
(33, 13, 'PAYID-MDQ2FXI3SA18858LT7904138', '2023-03-24', 'Uncollected'),
(34, 13, 'PAYID-MRD6ELA2E4497038A225372R', '2023-04-25', 'Uncollected');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL,
  `bodyInfo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`, `bodyInfo`) VALUES
(1, 'admin@admin.com', '$2y$10$dT9Ofr8SII8lHBkg1AfsmenQEpj2ZBDlvlpXfZCbSheLz.vVWm.Ru', 1, 'Admin', 'Flower Crafts', '', '', 'Sharmi.jpg', 1, '', '', '2023-04-20', ''),
(2, 'staff@staff.com', '$2y$10$dT9Ofr8SII8lHBkg1AfsmenQEpj2ZBDlvlpXfZCbSheLz.vVWm.Ru', 2, 'Flower', 'Staff', '222', '234234', '', 1, '', '', '2023-04-20', ''),
(13, 'ali@yahoo.com', '$2y$10$jLvkCnjhwm4PVuGlhbwvXuiiu7GwUdjNgIGVDSOp8KIIhvD8u7gGK', 0, 'Ali', 'Abu', '123,Old Klang Road, 57000,Kuala Lumpur', '0123456789', '', 1, '', 'N2DafbEk1HALVg5', '2023-04-20', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
