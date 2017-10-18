-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 17 Eki 2017, 09:27:08
-- Sunucu sürümü: 10.1.25-MariaDB
-- PHP Sürümü: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `mvcblog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`id`, `category`, `title`, `content`, `date`) VALUES
(2, 1, 'post 1', 'Lorem Ipsum Nedir?\r\nLorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', '2017-10-15 11:04:15'),
(3, 1, 'post 2', 'Lorem Ipsum Nedir?\r\nLorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', '2017-10-15 00:00:00'),
(5, 2, 'post 3', 'Lorem Ipsum Nedir?\r\nLorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', '2017-10-15 11:06:01'),
(6, 3, 'post 4\r\n', 'Lorem Ipsum Nedir?\r\nLorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', '2017-10-15 11:06:01'),
(7, 1, 'deneme', '<p>asdsadasdasd</p>\r\n', '2017-10-17 09:06:31'),
(8, 4, 'kurgu baslik', '<p>deneme<s>sdfsdasda&nbsp;&nbsp;</s></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><s>sdasdasasd</s></p>\r\n\r\n<p><s><em>asdsadas</em></s></p>\r\n\r\n<p><s><em><strong>adsasdas</strong></em></s></p>\r\n', '2017-10-17 09:21:38'),
(9, 1, 'Xeon işlemcili iMac Pro performansı!', '<p><strong>4,999 dolar</strong>lık fiyat etiketine sahip olan iMac Pro masa&uuml;st&uuml; iş istasyonu benchmark testlerinde &ldquo;<strong>AAPJ1371,1</strong>&rdquo; adıyla g&ouml;z&uuml;k&uuml;yor.<strong>&nbsp;Intel</strong>&nbsp;tarafından duyurulmamış ve saat hızı d&uuml;ş&uuml;r&uuml;lm&uuml;ş&nbsp;<strong>Xeon işlemciler</strong>in kullanıldığı g&ouml;zlenen testte,&nbsp;<strong>8 &ccedil;ekirdek 3.2 GHz Xeon W-2140B&nbsp;</strong>ve&nbsp;<strong>10 &ccedil;ekirdek 3.0 GHz Xeon W-2150B</strong>&nbsp;işlemcili modeller g&ouml;r&uuml;l&uuml;yor. Bazı benchmark sonu&ccedil;larının&nbsp;<strong>Ağustos sonu</strong>&nbsp;bazılarının ise&nbsp;<strong>Ekim&nbsp;</strong>ayına ait olduğunun da altını &ccedil;izelim.</p>\r\n\r\n<p>Modellerin daha&nbsp;<strong>d&uuml;ş&uuml;k termal tasarım g&uuml;c&uuml;</strong>ne sahip işlemcilere ihtiya&ccedil; duyduğu ileri s&uuml;r&uuml;l&uuml;rken, frekansların da bu sebeple d&uuml;ş&uuml;k tutulduğu s&ouml;yleniyor. Tahmin edeceğiniz &uuml;zere bundaki ana sebep &uuml;r&uuml;n&uuml;n&nbsp;<strong>hepsi bir arada form fakt&ouml;r&uuml;</strong>ne sahip olması.&nbsp;<strong>Xeon W</strong>&nbsp;işlemci ailesindeki diğer işlemcilerin&nbsp;<strong>140W&nbsp;</strong>değerine &ccedil;ıkan termal tasarım g&uuml;c&uuml;ne sahip olduğunu hatırlatalım.</p>\r\n\r\n<p><img alt=\"\" src=\"https://shiftdelete.net/wp-content/uploads/2017/10/imac-pro-geekbench-testinde-gozuktu-sdn-02-768x732.jpg\" /></p>\r\n', '2017-10-17 10:03:55');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
