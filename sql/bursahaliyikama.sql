-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 05 Oca 2019, 19:17:55
-- Sunucu sürümü: 5.1.73-community
-- PHP Sürümü: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `bursahaliyikama`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_groups`
--

CREATE TABLE IF NOT EXISTS `admin_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `admin_groups`
--

INSERT INTO `admin_groups` (`id`, `name`) VALUES
(1, 'Yönetici');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_perms`
--

CREATE TABLE IF NOT EXISTS `admin_perms` (
  `groupId` int(10) unsigned NOT NULL,
  `module` varchar(255) NOT NULL,
  `perm` varchar(255) NOT NULL,
  KEY `fk_admin_perms_groupId` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `admin_perms`
--

INSERT INTO `admin_perms` (`groupId`, `module`, `perm`) VALUES
(1, 'home', 'options'),
(1, 'home', 'password'),
(1, 'home', 'user-list'),
(1, 'home', 'user-insert'),
(1, 'home', 'user-update'),
(1, 'home', 'user-delete'),
(1, 'home', 'group-list'),
(1, 'home', 'group-insert'),
(1, 'home', 'group-update'),
(1, 'home', 'group-delete'),
(1, 'module', 'list'),
(1, 'module', 'update'),
(1, 'module', 'delete'),
(1, 'module', 'order'),
(1, 'social', 'list'),
(1, 'social', 'insert'),
(1, 'social', 'update'),
(1, 'social', 'delete'),
(1, 'menu', 'list'),
(1, 'menu', 'insert'),
(1, 'menu', 'update'),
(1, 'menu', 'delete'),
(1, 'content', 'list'),
(1, 'content', 'insert'),
(1, 'content', 'update'),
(1, 'content', 'delete'),
(1, 'contact', 'list'),
(1, 'contact', 'view'),
(1, 'contact', 'delete'),
(1, 'banner', 'list'),
(1, 'banner', 'insert'),
(1, 'banner', 'update'),
(1, 'banner', 'delete'),
(1, 'service', 'list'),
(1, 'service', 'insert'),
(1, 'service', 'update'),
(1, 'service', 'delete'),
(1, 'callyou', 'list'),
(1, 'callyou', 'delete'),
(1, 'gallery', 'list'),
(1, 'gallery', 'insert'),
(1, 'gallery', 'update'),
(1, 'gallery', 'delete'),
(1, 'gallery', 'image-list'),
(1, 'gallery', 'image-insert'),
(1, 'gallery', 'image-update'),
(1, 'gallery', 'image-delete');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `groupId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_admin_users_groupId` (`groupId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `groupId`) VALUES
(1, 'admin', 'e0f01e57d55b5038758d4d1cdf9c6aa8', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  `transition` varchar(255) NOT NULL,
  `delay` int(10) unsigned NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Tablo döküm verisi `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `link`, `text`, `transition`, `delay`, `order`, `language`) VALUES
(22, '', 'a90a904dbb43a806519a492cd27bc7c2.png', '', '', 'transition2d: 1', 4000, 1, 'tr'),
(23, '', '729836b6a9f4dcfb3dc7fe40924557bb.png', '', '', 'transition2d: 1', 4000, 2, 'tr'),
(25, 'Yerınde Koltuk Yıkama  Hizmeti 02242624130 & 05308915130', '7e7c03a12836ba09bb4b11e132832262.png', '', '', 'transition2d: 1', 6000, 0, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `callyou`
--

CREATE TABLE IF NOT EXISTS `callyou` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `approved` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`id`, `fullname`, `email`, `comment`, `date`, `ip`, `viewed`, `approved`) VALUES
(5, 'SEOboarf', 'nowodworowgeorgij@mail.ru', '  \r\n<a href=http://seorussian.ru>Продвижение сайта</a>   - <a href=http://seorussian.ru>seorussian.ru</a>', '2018-10-08 22:11:03', '95.37.204.1', 0, 0),
(6, 'KuhniArgus', 'scatresnasemb1995@seocdvig.ru', 'Кухни на заказ Нижний Новгород - http://xn----ttbhac9ao5f.xn--p1ai - нн-кухня.рф \r\n \r\nhttp://xn----ttbhac9ao5f.xn--p1ai -  кухни       ', '2018-12-13 15:19:46', '93.120.187.120', 0, 0),
(7, 'DetmebArgus', 'artyom-pokrovskiy-1970@bk.ru', 'Детская мебель на заказ в Нижнем Новгороде - <a href=http://xn--80achebb5amfoa3bm2mpb.xn--p1ai>детскаямебельнн.рф</a> \r\n \r\n<a href=http://xn--80achebb5amfoa3bm2mpb.xn--p1ai> мебель</a>       ', '2018-12-13 21:13:23', '109.184.229.136', 0, 0),
(8, 'KuhniArgus', 'shulcz.nikolaj.89@mail.ru', 'Кухни на заказ Нижний Новгород - <a href=http://kuhni-nn.ru>kuhni-nn.ru</a> \r\n \r\n<a href=http://kuhni-nn.ru> кухни на заказ фото</a>       ', '2018-12-16 10:57:27', '93.120.187.120', 0, 0),
(9, 'DetmebArgus', 'filippov.denis.filippov.1997.de@mail.ru', 'Детская мебель на заказ в Нижнем Новгороде - http://1-meb.ru - 1-meb.ru \r\n \r\nhttp://1-meb.ru -  детская мебель       ', '2018-12-17 03:52:32', '109.184.229.136', 0, 0),
(10, 'OfismebArgus', 'kirya.mironov.1974@list.ru', 'Офиская мебель на заказ Нижний Новгород - <a href=http://mebelnayafirma.ru>mebelnayafirma.ru</a> \r\n \r\n<a href=http://mebelnayafirma.ru> купить мебель для кабинета</a>       ', '2018-12-17 20:12:46', '109.184.229.136', 0, 0),
(11, 'OfismebArgus', 'zaxarov.aleksej.68@inbox.ru', 'Офиская мебель на заказ Нижний Новгород - <a href=http://xn----7sbdpbozehhab4b2b7itb.xn--p1ai>офиснаямебель-нн.рф</a> \r\n \r\n<a href=http://xn----7sbdpbozehhab4b2b7itb.xn--p1ai> офисная мебель Нижний Новгород</a>       ', '2018-12-18 17:04:48', '109.184.229.136', 0, 0),
(12, 'KuhniArgus', 'ignatev_german_ignatev_1997_ger@mail.ru', 'Кухни на заказ Нижний Новгород - http://xn--h1adjba6ao.xn--p1ai - кухнинн.рф \r\n \r\nhttp://xn--h1adjba6ao.xn--p1ai -  кухни на заказ       ', '2018-12-19 09:11:08', '93.120.145.107', 0, 0),
(13, 'BedroomArgus', 'bykov.ilya.2019@list.ru', 'Мебель для спальни на заказ в Нижнем Новгороде - http://xn----7sbylkcajr7i.xn--p1ai - спальни-нн.рф \r\n \r\nhttp://xn----7sbylkcajr7i.xn--p1ai - в спальню       ', '2018-12-20 22:34:04', '109.184.184.119', 0, 0),
(14, 'RoomArgus', 'vlasov.egor.71@list.ru', 'Стенки на заказ в Нижнем Новгороде - http://xn--90aeccbuhmbetakd5bq8n6b.xn--p1ai - мебельдлягостинной.рф \r\n \r\nhttp://xn--90aeccbuhmbetakd5bq8n6b.xn--p1ai - мебель для гостиной       ', '2018-12-21 00:59:19', '109.184.184.119', 0, 0),
(15, 'SEOboarf', 'learhongriddstor1983@seocdvig.ru', ' \r\nseorussian.ru - Продвижение сайтов            \r\n \r\nhttp://?seorussian.ru - Продвижение сайта Москва     \r\n \r\nhttp://?seorussian.ru/Izgotovlenie-saytov.html - Изготовление сайта    ', '2018-12-23 21:32:40', '109.184.184.119', 0, 0),
(16, 'KuhniArgus', 'den-antonov-1982@bk.ru', 'Кухни на заказ Нижний Новгород - <a href=http://xn----stbjba6ao5f.xn--p1ai>кухня-нн.рф</a> \r\n \r\n<a href=http://xn----stbjba6ao5f.xn--p1ai> маленькие кухни на заказ</a>       ', '2018-12-25 09:52:26', '109.184.176.191', 0, 0),
(17, 'HallwayArgus', 'lyonya-gusev@list.ru', 'Мебель в прихожию на заказ в Нижнем Новгороде - <a href=http://xn----7sbrh2aacgj5c3g.xn--p1ai>прихожая-нн.рф</a> \r\n \r\n<a href=http://xn----7sbrh2aacgj5c3g.xn--p1ai>шкафы-купе</a>       ', '2018-12-25 10:23:54', '109.184.184.119', 0, 0),
(18, 'DetmebArgus', 'vorobyov.rostislav.81@bk.ru', 'Детская мебель на заказ в Нижнем Новгороде - <a href=http://a2mebel.ru>a2mebel.ru</a> \r\n \r\n<a href=http://a2mebel.ru>мебель</a>       ', '2018-12-25 14:51:53', '109.184.176.191', 0, 0),
(19, 'teploArgus', 'ciethereschart2001@seocdvig.ru', 'Интернет-магазин http://https://pteplo.ru - pteplo.ru предлагает купить теплый пол в Москве недорого и максимально оперативно – мы предлагаем услугу доставки и удобные способы оплаты заказов. \r\n \r\nhttps://pteplo.ru - регулятор температуры отопления ', '2018-12-27 09:14:36', '109.184.184.119', 0, 0),
(20, 'HallwaybArgus', 'filippov.dmitrij.76@bk.ru', 'Мебель в прихожию на заказ в Нижнем Новгороде - <a href=http://salonshkafkupe.ru>salonshkafkupe.ru</a> \r\n \r\n<a href=http://salonshkafkupe.ru>шкафы</a>       ', '2018-12-27 14:57:50', '109.184.144.219', 0, 0),
(21, 'EverettArgus', 'glyctimanri1970@plusgmail.ru', 'http://мебель-шкаф.рф - шкафы купе \r\nhttp://мебель-шкаф.рф - шкафы купе на заказ \r\nhttp://мебель-шкаф.рф - шкафы купе недорого \r\nhttp://мебель-шкаф.рф - угловые шкафы купе \r\nhttp://мебель-шкаф.рф - шкафы купе фото \r\nhttp://мебель-шкаф.рф - встроенные шкафы купе \r\nhttp://мебель-шкаф.рф - шкафы купе каталог \r\nhttp://мебель-шкаф.рф - куплю шкаф купе \r\nhttp://мебель-шкаф.рф - купить шкаф купе \r\nhttp://мебель-шкаф.рф - шкафы купе цены \r\nhttp://мебель-шкаф.рф - дверь для шкафа купе \r\nhttp://мебель-шкаф.рф - двери для шкафов купе \r\nhttp://мебель-шкаф.рф - мебель шкафы купе \r\nhttp://мебель-шкаф.рф - фурнитура для шкафов купе \r\nhttp://мебель-шкаф.рф - наполнение шкафа купе \r\nhttp://мебель-шкаф.рф - шкафы купе москва \r\nhttp://мебель-шкаф.рф - изготовление шкафов купе \r\nhttp://мебель-шкаф.рф - комплектующие для шкафов купе \r\nhttp://мебель-шкаф.рф - сборка шкафа купе \r\nhttp://мебель-шкаф.рф - расчет шкафа купе \r\nhttp://мебель-шкаф.рф - готовые шкафы купе \r\nhttp://мебель-шкаф.рф - дизайн шкафов купе \r\nhttp://мебель-шкаф.рф - дизайны шкафов купе \r\nhttp://мебель-шкаф.рф - шкаф купе в прихожую \r\nhttp://мебель-шкаф.рф - стоимость шкафа купе \r\nhttp://мебель-шкаф.рф - магазины шкаф купе \r\nhttp://мебель-шкаф.рф - дешевые шкафы купе \r\nhttp://мебель-шкаф.рф - заказать шкаф купе \r\nhttp://мебель-шкаф.рф - схема шкафа купе \r\nhttp://мебель-шкаф.рф - производство шкафов купе \r\nhttp://мебель-шкаф.рф - профиль для шкафов купе \r\nhttp://мебель-шкаф.рф - распродажа шкафов купе \r\nhttp://мебель-шкаф.рф - найди шкафы купе \r\nhttp://мебель-шкаф.рф - шкафы купе от производителя \r\nhttp://мебель-шкаф.рф - шкафы купе продажа \r\nhttp://мебель-шкаф.рф - раздвижные шкафы купе \r\nhttp://мебель-шкаф.рф - мебельные шкафы купе \r\nhttp://мебель-шкаф.рф - шкафы купе на заказ недорого \r\nhttp://мебель-шкаф.рф - размеры шкаф купе \r\nhttp://мебель-шкаф.рф - шкаф купе проект \r\nhttp://мебель-шкаф.рф - угловые шкафы купе фото \r\nhttp://мебель-шкаф.рф - шкаф купе эконом \r\nhttp://мебель-шкаф.рф - фабрика мебели \r\nhttp://мебель-шкаф.рф - производство мебели \r\nhttp://мебель-шкаф.рф - кухонная мебель \r\nhttp://мебель-шкаф.рф - мебель на заказ \r\nhttp://мебель-шкаф.рф - корпусная мебель \r\nhttp://мебель-шкаф.рф - гостиная мебель \r\nhttp://мебель-шкаф.рф - мебель для кухни \r\nhttp://мебель-шкаф.рф - купить мебель \r\nhttp://мебель-шкаф.рф - мебель для гостиной \r\nhttp://мебель-шкаф.рф - мебель для гостиных \r\nhttp://мебель-шкаф.рф - каталог мебели \r\nhttp://мебель-шкаф.рф - мебель для комнаты \r\nhttp://мебель-шкаф.рф - производители мебели \r\nhttp://мебель-шкаф.рф - продажа мебели \r\nhttp://мебель-шкаф.рф - изготовление мебели \r\nhttp://мебель-шкаф.рф - прихожие мебель \r\nhttp://мебель-шкаф.рф - мебель для спален \r\nhttp://мебель-шкаф.рф - мебель для спальни \r\nhttp://мебель-шкаф.рф - мебель для ванной комнаты \r\nhttp://мебель-шкаф.рф - модульная мебель \r\nhttp://мебель-шкаф.рф - ремонт мебели \r\nhttp://мебель-шкаф.рф - мебель для офиса \r\nhttp://мебель-шкаф.рф - салон мебели \r\nhttp://мебель-шкаф.рф - мебель для дачи \r\nhttp://мебель-шкаф.рф - фото мебель \r\nhttp://мебель-шкаф.рф - мебель для дома \r\nhttp://мебель-шкаф.рф - недорогая мебель \r\nhttp://мебель-шкаф.рф - сборка мебели \r\nhttp://мебель-шкаф.рф - мебель дешевле \r\nhttp://мебель-шкаф.рф - дешевая мебель \r\nhttp://мебель-шкаф.рф - мебель шкафы \r\nhttp://мебель-шкаф.рф - дизайн мебели \r\nhttp://мебель-шкаф.рф - прихожии мебель \r\nhttp://мебель-шкаф.рф - сайт мебели \r\nhttp://мебель-шкаф.рф - мебель для детской комнаты \r\nhttp://мебель-шкаф.рф - сборка мебели \r\nhttp://мебель-шкаф.рф - мебель для детской комнаты \r\nhttp://мебель-шкаф.рф - стенки мебель \r\nhttp://мебель-шкаф.рф - цены на мебель \r\nhttp://мебель-шкаф.рф - сайт мебели \r\nhttp://мебель-шкаф.рф - мебель для детского сада \r\nhttp://мебель-шкаф.рф - прайс мебель \r\nhttp://мебель-шкаф.рф - прихожии мебель \r\nhttp://мебель-шкаф.рф - мебель недорого \r\nhttp://мебель-шкаф.рф - мебель для дачи \r\nhttp://мебель-шкаф.рф - размеры мебели \r\nhttp://мебель-шкаф.рф - дешевая мебель \r\nhttp://мебель-шкаф.рф - мебель дешевле \r\nhttp://мебель-шкаф.рф - дизайнер мебели \r\nhttp://мебель-шкаф.рф - встроенная мебель \r\nhttp://мебель-шкаф.рф - мебель фасады \r\nhttp://мебель-шкаф.рф - производство корпусной мебели \r\nhttp://мебель-шкаф.рф - мебель купе \r\nhttp://мебель-шкаф.рф - материал для мебели \r\nhttp://мебель-шкаф.рф - офисная мебель россии \r\nhttp://мебель-шкаф.рф - мебель \r\nhttp://мебель-шкаф.рф - изготовление корпусной мебели \r\nhttp://мебель-шкаф.рф - современная мебель \r\nhttp://мебель-шкаф.рф - изготовление мебели на заказ \r\nhttp://мебель-шкаф.рф - мебель для гостинной \r\nhttp://мебель-шкаф.рф - мебель для ресторанов \r\nhttp://мебель-шкаф.рф - офисная мебель москва \r\nhttp://мебель-шкаф.рф - мебель компьютерная \r\nhttp://мебель-шкаф.рф - библиотека мебель \r\nhttp://мебель-шкаф.рф - мебель шкафы купе \r\nhttp://мебель-шкаф.рф - офисная мебель заказ \r\nhttp://мебель-шкаф.рф - индивидуальная мебель \r\nhttp://мебель-шкаф.рф - мебель для кухни фото \r\nhttp://мебель-шкаф.рф - мебель для гостиниц \r\nhttp://мебель-шкаф.рф - мебель для зала \r\nhttp://мебель-шкаф.рф - корпусная мебель на заказ \r\nhttp://мебель-шкаф.рф - мебель для квартиры \r\nhttp://мебель-шкаф.рф - элементы мебели \r\nhttp://мебель-шкаф.рф - мебель скидки \r\nhttp://мебель-шкаф.рф - мебель из дсп \r\nhttp://мебель-шкаф.рф - мебель для кабинета \r\nhttp://мебель-шкаф.рф - офисная мебель под заказ \r\nhttp://мебель-шкаф.рф - стоимость мебели \r\nhttp://мебель-шкаф.рф - корпусная мебель гостиная \r\nhttp://мебель-шкаф.рф - хорошая мебель \r\nhttp://мебель-шкаф.рф - шкаф \r\nhttp://мебель-шкаф.рф - шкафы купе \r\nhttp://мебель-шкаф.рф - фото шкафы \r\nhttp://мебель-шкаф.рф - угловой шкаф \r\nhttp://мебель-шкаф.рф - встроенные шкафы \r\nhttp://мебель-шкаф.рф - шкафы купе фото \r\nhttp://мебель-шкаф.рф - шкафы на заказ \r\nhttp://мебель-шкаф.рф - шкаф дверь \r\nhttp://мебель-шкаф.рф - двери шкафа \r\nhttp://мебель-шкаф.рф - куплю шкаф \r\nhttp://мебель-шкаф.рф - шкаф купить \r\nhttp://мебель-шкаф.рф - шкафы купе на заказ \r\nhttp://мебель-шкаф.рф - каталог шкафов \r\nhttp://мебель-шкаф.рф - шкафы купе каталог \r\nhttp://мебель-шкаф.рф - шкаф купе угловой \r\nhttp://мебель-шкаф.рф - двери шкафов купе \r\nhttp://мебель-шкаф.рф - мебель шкафы \r\nhttp://мебель-шкаф.рф - шкафы для одежды \r\nhttp://мебель-шкаф.рф - дизайн шкафа \r\nhttp://мебель-шкаф.рф - шкаф недорого \r\nhttp://мебель-шкаф.рф - книжный шкаф \r\nhttp://мебель-шкаф.рф - шкафы купе недорого \r\nhttp://мебель-шкаф.рф - шкафы купе цены \r\nhttp://мебель-шкаф.рф - изготовление шкафов \r\nhttp://мебель-шкаф.рф - купить шкаф купе \r\nhttp://мебель-шкаф.рф - встроенные шкафы купе \r\nhttp://мебель-шкаф.рф - дизайн шкафов купе \r\nhttp://мебель-шкаф.рф - дизайны шкафов купе \r\nhttp://мебель-шкаф.рф - наполнение шкафа \r\nhttp://мебель-шкаф.рф - сборка шкафов \r\nhttp://мебель-шкаф.рф - раздвижные шкафы \r\nhttp://мебель-шкаф.рф - расчет шкафа купе \r\nhttp://мебель-шкаф.рф - производство шкафов \r\nhttp://мебель-шкаф.рф - размеры шкафов \r\nhttp://мебель-шкаф.рф - фасады шкафов купе \r\nhttp://мебель-шкаф.рф - шкаф купе наполнение \r\nhttp://мебель-шкаф.рф - зеркало шкаф \r\nhttp://мебель-шкаф.рф - шкаф прайс \r\nhttp://мебель-шкаф.рф - кухонный шкаф \r\nhttp://мебель-шкаф.рф - встроенный духовой шкаф \r\nhttp://мебель-шкаф.рф - мебель шкафы купе \r\nhttp://мебель-шкаф.рф - фурнитура для шкафов \r\nhttp://мебель-шкаф.рф - шкаф в прихожую \r\nhttp://мебель-шкаф.рф - стоимость шкафы \r\nhttp://мебель-шкаф.рф - изготовление шкафов купе \r\nhttp://мебель-шкаф.рф - сборка шкафа купе \r\nhttp://мебель-шкаф.рф - цены на шкафы \r\nhttp://мебель-шкаф.рф - раздвижные шкафы купе \r\nhttp://мебель-шкаф.рф - шкафы купэ \r\nhttp://мебель-шкаф.рф - силовой шкаф \r\nhttp://мебель-шкаф.рф - продажа шкафов \r\nhttp://мебель-шкаф.рф - офисный шкаф \r\nhttp://мебель-шкаф.рф - фурнитура для шкафов купе \r\nhttp://мебель-шкаф.рф - духовой шкаф газовый \r\nhttp://мебель-шкаф.рф - шкаф стеллаж \r\nhttp://мебель-шкаф.рф - схемы шкафы купе \r\nhttp://мебель-шкаф.рф - шкаф купе проект \r\nhttp://мебель-шкаф.рф - настенный шкаф \r\nhttp://мебель-шкаф.рф - дверь для шкафа купе \r\nhttp://мебель-шкаф.рф - шкаф витрина \r\nhttp://мебель-шкаф.рф - фильм шкаф \r\nhttp://мебель-шкаф.рф - шкаф купе стоимость \r\nhttp://мебель-шкаф.рф - системы для шкафов купе \r\nhttp://мебель-шкаф.рф - рисунки на шкафы купе \r\nhttp://мебель-шкаф.рф - шкаф навесной \r\nhttp://мебель-шкаф.рф - профиль для шкафов \r\nhttp://мебель-шкаф.рф - конструкция шкафа \r\nhttp://мебель-шкаф.рф - стенки шкафы \r\nhttp://мебель-шкаф.рф - шкаф на балкон \r\nhttp://мебель-шкаф.рф - гардеробные шкафы \r\nhttp://мебель-шкаф.рф - модели шкафов \r\nhttp://мебель-шкаф.рф - шкаф для обуви \r\nhttp://мебель-шкаф.рф - профиль для шкафов купе \r\nhttp://мебель-шкаф.рф - шкаф купе в прихожую \r\nhttp://мебель-шкаф.рф - платяной шкаф \r\nhttp://мебель-шкаф.рф - собрать шкаф \r\nhttp://мебель-шкаф.рф - мебельный шкаф \r\nhttp://мебель-шкаф.рф - шкаф купе скачать \r\nhttp://мебель-шкаф.рф - шкаф для хранения \r\nhttp://мебель-шкаф.рф - раздвижные системы для шкафов \r\nhttp://мебель-шкаф.рф - шкаф для посуды \r\nhttp://мебель-шкаф.рф - шкафы в картинках \r\nhttp://мебель-шкаф.рф - шкаф описание \r\nhttp://мебель-шкаф.рф - корпусные шкафы \r\nhttp://мебель-шкаф.рф - кухни шкафы купе \r\nhttp://мебель-шкаф.рф - размеры шкаф купе \r\nhttp://мебель-шкаф.рф - готовые шкафы \r\nhttp://мебель-шкаф.рф - шкафы под заказ \r\nhttp://мебель-шкаф.рф - куплю шкаф \r\nhttp://мебель-шкаф.рф - шкаф купить \r\nhttp://мебель-шкаф.рф - купить шкаф купе', '2018-12-27 22:31:13', '109.184.176.191', 0, 0),
(22, 'OfismebArgus', 'matveev.bogdan.1985@bk.ru', 'Офиская мебель на заказ Нижний Новгород - http://plus-mebel.ru - plus-mebel.ru \r\n \r\nhttp://plus-mebel.ru -  мебель       ', '2018-12-28 14:41:50', '109.184.176.191', 0, 0),
(23, 'SEOboarf', 'tabuddworlforc1970@seocdvig.ru', ' \r\nseorussian.ru - Разработка сайта   \r\n \r\nhttp://www.seorussian.ru - Раскрутка сайта Москва     \r\n \r\nhttp://www.seorussian.ru/Razrabotka-saytov.html - Разработка сайта    ', '2019-01-04 17:34:35', '93.120.178.241', 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `summary` text,
  `detail` longtext,
  `image` varchar(255) DEFAULT NULL,
  `reserved` varchar(255) DEFAULT NULL,
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` text,
  `metaKeywords` text,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_contents_parentId` (`parentId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Tablo döküm verisi `contents`
--

INSERT INTO `contents` (`id`, `parentId`, `title`, `slug`, `summary`, `detail`, `image`, `reserved`, `metaTitle`, `metaDescription`, `metaKeywords`, `order`, `language`) VALUES
(1, NULL, 'STOR PERDELERİNİZİ NASIL YIKIYORUZ? DETAYLI BİLGİ İÇİN 02242624130 & 05308915130', 'stor-perdelerinizi-nasil-yikiyoruz', 'Öncelikle adresinizden ücretsiz servisimizle teslim aldığımız stor perdelerinizi, herhangi bir karışıklık olmaması için her müşterimize ayrı ayrı verdiğimiz numaralarla etiketliyoruz.', '<p font-size:="" open="" style="margin-bottom: 20px; color: rgb(142, 142, 142); font-family: " text-align:=""><span style="color: rgb(0, 0, 0);">&ndash; &Ouml;ncelikle adresinizden &uuml;cretsiz servisimizle teslim aldığımız<b>&nbsp;stor perdelerinizi</b>, herhangi bir karışıklık olmaması i&ccedil;in her m&uuml;şterimize ayrı ayrı verdiğimiz numaralarla etiketliyoruz.</span></p>\r\n\r\n<p font-size:="" open="" style="margin-bottom: 20px; color: rgb(142, 142, 142); font-family: " text-align:=""><br />\r\n<span style="color: rgb(0, 0, 0);">&ndash; Daha sonra&nbsp;<strong>tesisimize</strong><b>&nbsp;ulaşan stor perdelerinizi</b>&nbsp;<strong>yıkama</strong>&nbsp;sırasına alıyoruz.</span></p>\r\n\r\n<p font-size:="" open="" style="margin-bottom: 20px; color: rgb(142, 142, 142); font-family: " text-align:=""><br />\r\n<span style="color: rgb(0, 0, 0);">&ndash;&nbsp;<b>Stor perdelerinizi</b>&nbsp;&ouml;nce, &uuml;zerinde olabilecek yabancı cisimlerden arındırıyoruz. Daha sonra,&nbsp;<b>yıkama</b>&nbsp;işlemine başlamadan &ouml;nce bol su ile<b>&nbsp;stor perdelerinizi</b>&nbsp;ıslatıyor ve kirlerini yumuşatıryoruz.</span></p>\r\n\r\n<p font-size:="" open="" style="margin-bottom: 20px; color: rgb(142, 142, 142); font-family: " text-align:=""><br />\r\n<span style="color: rgb(0, 0, 0);">&ndash; &Ouml;zel&nbsp;<b>yıkama şampuanımız</b>&nbsp;ile, &ouml;zel sanayi tipi perdelerinize asla zarar vermeyen fır&ccedil;alarımızla<b>&nbsp;stor perdelerinizin</b>&nbsp;cinsine/t&uuml;r&uuml;ne g&ouml;re &ouml;zel y&ouml;ntem ve tekniklerle &ouml;ncelikle &ouml;n y&uuml;z&uuml;n&uuml;, daha sonra arka y&uuml;z&uuml;n&uuml; bol k&ouml;p&uuml;k, bol fır&ccedil;a darbeleri ile yıkıyor ve bol su ile duruluyoruz.&nbsp;<b>Stor perdelerinizin metal ve zincirli kısımlarına da gereken temizliği uyguladıktan sonra</b>&nbsp;<strong>yıkama</strong>&nbsp;ve&nbsp;<strong>temizlik</strong>&nbsp;işlemimiz tamamlanmış oluyor.</span></p>\r\n\r\n<p font-size:="" open="" style="margin-bottom: 20px; color: rgb(142, 142, 142); font-family: " text-align:=""><br />\r\n<span style="color: rgb(0, 0, 0);">&ndash;&nbsp;<strong>Yıkama</strong>&nbsp;ve durulama işlemi bittikten sonra&nbsp;<b>stor perdelerinizi</b>&nbsp;1 g&uuml;n s&uuml;re ile &ouml;zel askılıklarımızda havalandırıyoruz.</span></p>\r\n\r\n<p font-size:="" open="" style="margin-bottom: 20px; color: rgb(142, 142, 142); font-family: " text-align:=""><br />\r\n<span style="color: rgb(0, 0, 0);">&ndash; Kuruyan&nbsp;<b>stor perdelerinizin</b>, kontrol tezgahımızda deneyimli personelimiz tarafından son konrolleri yapılıyor. Eğer&nbsp;<b>stor perdelerinizde</b>&nbsp;&ccedil;ıkmayan&nbsp;<b>inat&ccedil;ı lekeler veya sigara isi gibi sarılıklar</b>&nbsp;var ise, end&uuml;stiriyel leke &ccedil;ıkarıcı deterjanlarımızla manuel olarak m&uuml;dahale ediyoruz.</span></p>\r\n\r\n<p font-size:="" open="" style="margin-bottom: 20px; color: rgb(142, 142, 142); font-family: " text-align:=""><br />\r\n<span style="color: rgb(0, 0, 0);">&ndash; Son olarak &ouml;zel ferah kokulu&nbsp;<strong>&ouml;zel</strong>&nbsp;parf&uuml;m&uuml;m&uuml;zle&nbsp;<b>stor perdelerinizi&nbsp;</b>parf&uuml;ml&uuml;yor ve ambalaj poşetlerimizle paketliyor,&nbsp;<em>&uuml;cretsiz servisimizle</em>&nbsp;adresinize teslim ediyoruz.</span></p>\r\n\r\n<p font-size:="" open="" style="margin-bottom: 20px; color: rgb(142, 142, 142); font-family: " text-align:=""><br />\r\n<span style="color: rgb(0, 0, 0);">Aynı zamanda&nbsp;<b>stor perdeleriniz</b>&nbsp;firmamız tarafında&nbsp;<em>sigortalıdır</em>. &Ouml;zenle ve dikkatle yıkadığımız&nbsp;<b>stor perdelerinizi</b>&nbsp;deneyimli personelimiz ile, &ouml;zel&nbsp;<b>yıkama şampuanlarımızla</b>&nbsp;ilk g&uuml;nk&uuml; parlaklığına kavuşuyor.&nbsp;<b>Stor perdelerinizi</b>&nbsp;riske atmak istemiyorsanız&nbsp;<b>Yalova Baba Halı ve Koltuk Yıkama Merkezi</b>&lsquo;ne ulaşabilirsiniz. Size hizmet vermekten memnuniyet duyarız.</span></p>\r\n\r\n<p font-size:="" open="" style="margin-bottom: 20px; color: rgb(142, 142, 142); font-family: " text-align:=""><br />\r\n<span style="color: rgb(0, 0, 0);">Not:&nbsp;<b>Stor perdelerinizi</b>&nbsp;teslim aldığınızda&nbsp;<em>poşetinden &ccedil;ıkartmayı unutmayın! Poşetler taşıma ama&ccedil;lıdır.</em>&nbsp;Uzun s&uuml;re poşet i&ccedil;erisinde duran&nbsp;<b>stor perdeleriniz</b>&nbsp;parf&uuml;mlemeden dolayı oluşan hafif nemlenmeden dolayı yeşillenebilir.</span></p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div class="post-tags" style="font-family: Play, sans-serif; -webkit-font-smoothing: antialiased; overflow: hidden; margin-bottom: 10px; color: rgb(142, 142, 142); font-size: 14px;">&nbsp;</div>\r\n', 'e50158686133ffb1356618d07c26ea3c.jpg', 'home', '', '', '', 1, 'tr'),
(5, NULL, 'İnsan Kaynakları', 'insan-kaynaklari', '', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-size: 14px; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-size: 14px; text-align: justify;">, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</span></p>\r\n', NULL, NULL, '', '', '', 3, 'tr'),
(16, NULL, 'Hakkımızda', 'hakkimizda', 'Bursada Stor Perde, koltuk ve yorgan yıkama konusunda kaliteli hizmet vermekteyiz.Ve bu sebeple  bize verilen isimle  eş değer olarak ismimizi stor doktoru olarak gelen talepler üzerine değiştirmiş bulunmaktayız,ilgi ve alakanız için teşekkür ederiz', '<p><strong>Bursada Stor Perde,</strong> koltuk ve yorgan yıkama konusunda kaliteli hizmet vermekteyiz.Ve bu sebeple&nbsp; bize verilen isimle&nbsp; eş değer olarak ismimizi stor doktoru olarak gelen talepler &uuml;zerine değiştirmiş bulunmaktayız,ilgi ve alakanız i&ccedil;in teşekk&uuml;r ederiz</p>\r\n', 'f2fe2ecb212ed005a4a02220347ba21a.jpg', NULL, '', '', '', 13, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cvs`
--

CREATE TABLE IF NOT EXISTS `cvs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text,
  `cv` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Tablo döküm verisi `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `slug`, `image`, `order`, `language`) VALUES
(4, 'Sizden Gelenler', 'sizden-gelenler', '98aebc5e25319d4d81cbcf53cc2c75bc.jpg', 1, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gallery_images`
--

CREATE TABLE IF NOT EXISTS `gallery_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `galleryId` int(10) unsigned NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Tablo döküm verisi `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `galleryId`, `image`, `order`, `language`) VALUES
(32, 4, '475ad862564c7c90a9dd24bb31bb627c.jpg', 1, 'tr'),
(33, 4, '22b506f40574cc080abde6ea4fe52b23.jpg', 2, 'tr'),
(34, 4, 'bedaf78160bd75339dff1221da3562d7.jpg', 3, 'tr'),
(35, 4, '339398d374be45e3a7065cecb47b30e2.jpg', 4, 'tr'),
(36, 4, '0ab2e7b1ba9c38f72bd845fcd95b10ca.jpg', 5, 'tr'),
(37, 4, 'b4862f11f202eb4c4259d1e2e22700ac.jpg', 6, 'tr'),
(38, 4, '71e610ec6c4dce74bb8fe0af9baa9018.jpg', 7, 'tr'),
(39, 4, '756a1b2c593d23caebfafffec790fff9.jpg', 8, 'tr'),
(40, 4, 'fb2fa6d1e27fbe17cec1ff5887d614bd.jpg', 9, 'tr'),
(41, 4, 'b6f745e701b89b200b5d5564541393fb.jpg', 10, 'tr'),
(42, 4, '674a09979a3116059a24db4c5736c1be.jpg', 11, 'tr'),
(43, 4, '4526a2970c52cb2111139e5046a58134.jpg', 12, 'tr'),
(44, 4, '0b9c2d3e7ec07facf77db2a83a96073e.jpg', 13, 'tr'),
(45, 4, 'da3400c53ec6d28fd42fcff10338ec58.jpg', 14, 'tr'),
(46, 4, '66851af49c38ce51f3b6c6adee373bca.jpg', 15, 'tr'),
(47, 4, 'ed91e63d8fce7255517f783fa4158088.jpg', 16, 'tr'),
(48, 4, 'bb26ede8c92c976aed991fafc10b21e7.jpg', 17, 'tr'),
(49, 4, '3a4026f9f25af030340037d5a74bdd68.jpg', 18, 'tr'),
(50, 4, '529f463d190be291d92834d8ee32ba0e.jpg', 19, 'tr'),
(51, 4, '84678211b56f9df4769347705240f609.jpg', 20, 'tr'),
(52, 4, 'aeb60c7afc78b51e73f23b7f6777c4c1.jpg', 21, 'tr'),
(53, 4, '6f7dd8c614afa10d16fe74e3e8f74d21.jpg', 22, 'tr'),
(54, 4, 'feb8ef7771e9a96c4c07124a843771b2.jpg', 23, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `maillist`
--

CREATE TABLE IF NOT EXISTS `maillist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=723 ;

--
-- Tablo döküm verisi `maillist`
--

INSERT INTO `maillist` (`id`, `fullname`, `email`, `date`, `ip`) VALUES
(1, '0', 'info23@cantatic.com', '2018-11-05 23:56:31', '147.135.11.231'),
(2, '0', 'chadd.davenport2010@gmail.com', '2018-11-25 17:12:31', '185.220.101.15'),
(3, '0', 'doctorhayes87@gmail.com', '2018-11-25 21:26:13', '185.220.102.8'),
(4, '0', 'christinemotsinger@yahoo.com', '2018-11-26 04:09:01', '37.187.129.166'),
(5, '0', 'marcimoved@yahoo.com', '2018-11-26 06:30:59', '158.69.193.32'),
(6, '0', 'ccphilly1984@yahoo.com', '2018-11-26 12:56:32', '185.220.101.8'),
(7, '0', 'poppyhill@reagan.com', '2018-11-26 14:13:43', '185.234.217.232'),
(8, '0', 'stradagos@gmail.com', '2018-11-26 17:18:02', '185.220.101.3'),
(9, '0', 'pop.iovanel.alexandru@gmail.com', '2018-11-26 18:30:52', '178.17.170.196'),
(10, '0', 'jadeygyrl@gmail.com', '2018-11-26 18:31:24', '185.129.62.63'),
(11, '0', 'lpastiu@aol.com', '2018-11-26 18:35:22', '185.220.101.34'),
(12, '0', 'johanne@publiforme.com', '2018-11-26 19:16:40', '51.15.125.181'),
(13, '0', 'rlarson1981@gmail.com', '2018-11-26 19:36:33', '193.171.202.150'),
(14, '0', 'oatmeal1956@gmail.com', '2018-11-26 21:39:17', '178.32.51.31'),
(15, '0', 'mfvance@comcast.net', '2018-11-26 22:11:34', '80.127.116.96'),
(16, '0', 'bshuldman@aol.com', '2018-11-26 22:22:21', '77.247.181.163'),
(17, '0', 'donald.ofarrell@globetrotter.net', '2018-11-26 22:49:32', '167.99.42.89'),
(18, '0', 'lbzblondy@aol.com', '2018-11-26 23:06:26', '185.125.33.114'),
(19, '0', 'hahncmaximilian@gmail.com', '2018-11-27 02:23:11', '197.231.221.211'),
(20, '0', 'veryrucky@aol.com', '2018-11-27 02:43:32', '199.249.230.66'),
(21, '0', 'pburg1953@yahoo.com', '2018-11-27 02:43:40', '185.220.101.33'),
(22, '0', 'ahnerstacey@gmail.com', '2018-11-27 03:29:43', '195.176.3.20'),
(23, '0', 'mcdowellar@gmail.com', '2018-11-27 03:39:50', '185.72.244.24'),
(24, '0', 'lucyod@aol.com', '2018-11-27 10:56:19', '85.248.227.164'),
(25, '0', 'alanmay00@yahoo.com', '2018-11-27 14:43:45', '185.220.102.4'),
(26, '0', 'remyblanchaert@gmail.com', '2018-11-27 14:46:17', '195.176.3.23'),
(27, '0', 'jeffreysalzgeber@gmail.com', '2018-11-27 16:06:32', '77.247.181.163'),
(28, '0', 'jeffreysalzgeber@gmail.com', '2018-11-27 16:13:10', '85.248.227.163'),
(29, '0', 'shah@hk.co', '2018-11-27 17:04:57', '51.15.99.115'),
(30, '0', 'cyndeemadonna@yahoo.com', '2018-11-27 18:29:10', '197.231.221.211'),
(31, '0', 'kbdynasty@aol.com', '2018-11-27 18:54:08', '87.118.92.43'),
(32, '0', 'matthammer.home@gmail.com', '2018-11-27 18:55:54', '185.193.125.168'),
(33, '0', 'tripp_donna04@yahoo.com', '2018-11-27 19:19:16', '176.10.99.200'),
(34, '0', 'akaymom@yahoo.com', '2018-11-27 19:42:54', '185.112.254.195'),
(35, '0', 'santabarbara618@yahoo.com', '2018-11-27 20:25:22', '51.15.124.1'),
(36, '0', 'santabarbara618@yahoo.com', '2018-11-27 21:28:34', '171.25.193.78'),
(37, '0', 'jcsrbc@aol.com', '2018-11-27 21:50:48', '185.125.33.114'),
(38, '0', 'camparound@comcast.net', '2018-11-27 21:57:30', '87.118.115.176'),
(39, '0', 'r_mccanless@yahoo.com', '2018-11-27 23:35:32', '195.176.3.24'),
(40, '0', 'chexent@gmail.com', '2018-11-27 23:47:16', '185.193.125.115'),
(41, '0', 'jykang@maunafresh.com', '2018-11-27 23:52:04', '46.165.230.5'),
(42, '0', 'chloedmello@yahoo.com', '2018-11-28 00:10:28', '163.172.151.47'),
(43, '0', 'nicole_paul73@yahoo.com', '2018-11-28 00:42:50', '104.244.73.126'),
(44, '0', 'a_mcewen@yahoo.com', '2018-11-28 00:43:19', '109.70.100.20'),
(45, '0', 'taushalay1@gmail.com', '2018-11-28 02:25:35', '185.129.62.62'),
(46, '0', 'colinc4466@gmail.com', '2018-11-28 02:29:27', '37.128.222.30'),
(47, '0', 'ianjess@bell.net', '2018-11-28 02:45:45', '207.244.70.35'),
(48, '0', 'jessicadixonre@yahoo.com', '2018-11-28 02:52:30', '209.141.61.45'),
(49, '0', 'jwatson732@yahoo.com', '2018-11-28 03:01:20', '62.210.71.205'),
(50, '0', 'bwalborn53@gmail.com', '2018-11-28 03:37:19', '51.254.209.128'),
(51, '0', 'vero817702@gmail.com', '2018-11-28 15:14:41', '198.98.56.149'),
(52, '0', 'parashbs@yahoo.com', '2018-11-28 15:15:08', '192.42.116.23'),
(53, '0', 'khowardchatham@aol.com', '2018-11-28 15:45:13', '185.107.47.215'),
(54, '0', 'steve.rudyk@gmail.com', '2018-11-28 16:36:47', '197.231.221.211'),
(55, '0', 'esaville@aol.com', '2018-11-28 17:09:57', '65.19.167.132'),
(56, '0', 'kbdynasty@aol.com', '2018-11-28 17:44:03', '192.160.102.169'),
(57, '0', 'pzkpfw6@aol.com', '2018-11-28 18:27:13', '37.139.8.104'),
(58, '0', 'joerg-ulmer@gmx.de', '2018-11-28 20:43:24', '185.234.217.233'),
(59, '0', 'tprice318@gmail.com', '2018-11-28 21:07:47', '212.21.66.6'),
(60, '0', 'rwdndad@aol.com', '2018-11-28 22:23:32', '198.98.58.135'),
(61, '0', 'maryotway@yahoo.com', '2018-11-28 22:52:35', '178.17.166.147'),
(62, '0', 'braydensmom1114@aol.com', '2018-11-28 23:10:51', '163.172.67.180'),
(63, '0', 'ash_bagley@aol.com', '2018-11-28 23:14:41', '104.244.73.126'),
(64, '0', 'jkayl13@aol.com', '2018-11-29 00:29:20', '109.70.100.19'),
(65, '0', 'unikornt@aol.com', '2018-11-29 00:37:37', '192.42.116.28'),
(66, '0', 'ericstone021@gmail.com', '2018-11-29 01:50:34', '185.220.101.33'),
(67, '0', 'maryotway@yahoo.com', '2018-11-29 03:03:06', '51.75.25.105'),
(68, '0', 'nancytlynch@yahoo.com', '2018-11-29 03:23:41', '195.176.3.23'),
(69, '0', 'hopesmama2002@yahoo.com', '2018-11-29 03:23:44', '217.182.244.60'),
(70, '0', 'pthaipham@gmail.com', '2018-11-29 05:44:36', '94.230.208.148'),
(71, '0', 'sjpaurora@gmail.com', '2018-11-29 07:20:29', '195.176.3.20'),
(72, '0', 'ashley.sigley1234@gmail.com', '2018-11-29 07:46:13', '176.10.99.200'),
(73, '0', 'soemyathtet22@gmail.com', '2018-11-29 12:09:27', '94.230.208.147'),
(74, '0', 'kbdynasty@aol.com', '2018-11-29 12:25:39', '87.120.36.157'),
(75, '0', 'zovala12@gmail.com', '2018-11-29 18:28:03', '185.220.100.254'),
(76, '0', 'psl0216@gmail.com', '2018-11-29 20:53:19', '51.15.57.167'),
(77, '0', 'jepg555@gmail.com', '2018-11-29 22:04:37', '85.114.142.205'),
(78, '0', 'ashpatel07@gmail.com', '2018-11-29 23:35:35', '89.31.57.5'),
(79, '0', 'johnglennmachaffie@gmail.com', '2018-11-29 23:46:35', '162.247.74.216'),
(80, '0', 'matt.ogorman@thalesgroup.com', '2018-11-30 01:41:47', '5.199.130.127'),
(81, '0', 'chinatsu1422@yahoo.com', '2018-11-30 01:41:56', '163.172.175.43'),
(82, '0', 'jynnlow@gmail.com', '2018-11-30 01:52:40', '178.20.55.16'),
(83, '0', 'lforsythe21@yahoo.com', '2018-11-30 01:55:45', '91.219.236.171'),
(84, '0', 'cdonawa75@gmail.com', '2018-11-30 02:17:33', '199.249.230.72'),
(85, '0', 'crossemmert@yahoo.com', '2018-11-30 02:40:56', '94.102.51.78'),
(86, '0', 'sheriffjackson527@gmail.com', '2018-11-30 03:23:32', '159.69.91.3'),
(87, '0', 'clymarrow@yahoo.com', '2018-11-30 07:07:33', '185.220.100.254'),
(88, '0', 'bgould444@gmail.com', '2018-11-30 12:27:08', '195.176.3.23'),
(89, '0', 'golfboggs14@yahoo.com', '2018-11-30 12:37:05', '185.165.168.168'),
(90, '0', 'adeedpb@gmail.com', '2018-11-30 14:08:54', '185.107.94.183'),
(91, '0', 'courtlandhandy3rd@gmail.com', '2018-11-30 15:17:19', '85.202.163.127'),
(92, '0', 'aaronachtenberg@gmail.com', '2018-11-30 16:31:26', '209.141.55.10'),
(93, '0', 'trovescott@gmail.com', '2018-11-30 17:42:39', '91.219.236.171'),
(94, '0', 'viper.ponte@gmail.com', '2018-11-30 18:07:22', '185.220.102.8'),
(95, '0', 'roseperez@amalgamatedbank.com', '2018-11-30 20:13:48', '192.160.102.168'),
(96, '0', 'mikep34580@yahoo.com', '2018-11-30 20:31:55', '78.142.19.43'),
(97, '0', 'jerm171717@gmail.com', '2018-11-30 22:04:19', '92.63.103.241'),
(98, '0', 'joeadams007@yahoo.com', '2018-11-30 22:50:34', '176.10.104.240'),
(99, '0', 'bgreens123@gmail.com', '2018-11-30 22:59:56', '92.63.103.241'),
(100, '0', 'clarejeon63@gmail.com', '2018-11-30 23:17:09', '185.220.101.28'),
(101, '0', 'jamiesnedaker@gmail.com', '2018-12-01 00:11:20', '104.244.73.126'),
(102, '0', 'kallan3@gmail.com', '2018-12-01 01:06:19', '199.249.230.68'),
(103, '0', 'rizky.renanda@gmail.com', '2018-12-01 02:53:24', '104.244.76.50'),
(104, '0', 'daddyojielo@gmail.com', '2018-12-01 03:02:20', '185.220.101.44'),
(105, '0', 'stefanodamiano13@gmail.com', '2018-12-01 03:02:21', '185.220.101.32'),
(106, '0', 'jeffmcmurrey@yahoo.com', '2018-12-01 04:20:20', '46.105.52.65'),
(107, '0', 'rhcaga@gmail.com', '2018-12-01 05:33:22', '158.69.192.239'),
(108, '0', 'bayspirit@comcast.net', '2018-12-01 07:17:40', '199.249.230.72'),
(109, '0', 'brinsfield.cole@gmail.com', '2018-12-01 14:09:59', '77.247.181.165'),
(110, '0', 'christiansekhanan@yahoo.com', '2018-12-01 15:01:01', '204.85.191.30'),
(111, '0', 'adeedpb@gmail.com', '2018-12-01 15:03:13', '217.182.78.177'),
(112, '0', 'zhongnandu@gmail.com', '2018-12-01 15:06:03', '51.15.240.100'),
(113, '0', 'mojoflyer@gmail.com', '2018-12-01 15:50:49', '37.187.94.86'),
(114, '0', 'brinsfield.cole@gmail.com', '2018-12-01 15:59:13', '199.249.230.70'),
(115, '0', 'trovescott@gmail.com', '2018-12-01 16:24:53', '185.220.101.44'),
(116, '0', 'tyler3abbott@gmail.com', '2018-12-01 18:17:24', '185.104.120.2'),
(117, '0', 'ethan.mereo00@gmail.com', '2018-12-01 19:04:14', '185.220.102.4'),
(118, '0', 'christiansekhanan@yahoo.com', '2018-12-01 19:29:24', '209.141.61.45'),
(119, '0', 'gerlachundstiefel@gmx.de', '2018-12-01 19:47:19', '51.15.68.66'),
(120, '0', 'denapeachey@aol.com', '2018-12-01 19:59:02', '185.220.101.30'),
(121, '0', 'viper.ponte@gmail.com', '2018-12-01 20:06:01', '195.135.194.134'),
(122, '0', 'lkayl59@aol.com', '2018-12-02 09:44:27', '185.220.101.33'),
(123, '0', 'hnlkeith@aol.com', '2018-12-02 12:06:15', '185.220.101.27'),
(124, '0', 'dblon12@gmail.com', '2018-12-02 13:40:38', '185.220.101.22'),
(125, '0', 'kylejbrazell@gmail.com', '2018-12-02 15:57:30', '109.70.100.20'),
(126, '0', 'alanmay00@yahoo.com', '2018-12-02 17:34:50', '176.10.99.200'),
(127, '0', 'gage.blvd@gmail.com', '2018-12-02 21:23:23', '185.100.86.100'),
(128, '0', 'rizwankhan0814@gmail.com', '2018-12-02 21:25:35', '80.127.116.96'),
(129, '0', 'cameronobscura31@yahoo.com', '2018-12-03 09:13:48', '62.210.105.116'),
(130, '0', 'ffleo570@gmail.com', '2018-12-03 16:55:12', '51.75.66.250'),
(131, '0', 'dmassaro87@gmail.com', '2018-12-03 17:49:47', '185.104.120.7'),
(132, '0', 'humeteach@yahoo.com', '2018-12-03 19:05:37', '199.249.230.66'),
(133, '0', 'seanemail@gmail.com', '2018-12-03 19:43:53', '195.176.3.19'),
(134, '0', 'drwhofan.jh@gmail.com', '2018-12-03 20:07:41', '109.70.100.18'),
(135, '0', 'carolaltruda@gmail.com', '2018-12-03 20:35:42', '144.217.161.119'),
(136, '0', 'marierags@aol.com', '2018-12-03 21:07:58', '195.176.3.20'),
(137, '0', 'dmassaro87@gmail.com', '2018-12-03 21:38:08', '185.234.217.241'),
(138, '0', 'dtchambers44@yahoo.com', '2018-12-03 21:51:31', '176.10.99.200'),
(139, '0', 'jerm171717@gmail.com', '2018-12-03 23:19:30', '197.231.221.211'),
(140, '0', 'jasonmmidrow@gmail.com', '2018-12-04 00:52:24', '216.218.222.12'),
(141, '0', 'cserich@yahoo.com', '2018-12-04 01:28:33', '51.15.82.2'),
(142, '0', 'multifloor@aol.com', '2018-12-04 02:59:23', '37.139.8.104'),
(143, '0', 'jimmyjames7o7@yahoo.com', '2018-12-04 04:14:40', '185.100.86.100'),
(144, '0', 'wpthurman@gmail.com', '2018-12-04 04:41:48', '37.187.129.166'),
(145, '0', 'dtchambers44@yahoo.com', '2018-12-04 06:55:26', '89.31.57.5'),
(146, '0', 'kraven_23@yahoo.com', '2018-12-04 07:46:21', '197.231.221.211'),
(147, '0', 'info@rijschool-expert.nl', '2018-12-04 09:55:49', '193.171.202.150'),
(148, '0', 'nick.aalerud@gmail.com', '2018-12-04 10:07:20', '171.25.193.235'),
(149, '0', 'jasonmmidrow@gmail.com', '2018-12-04 13:50:15', '192.160.102.165'),
(150, '0', 'josesarabaza28@gmail.com', '2018-12-04 14:00:11', '185.234.217.235'),
(151, '0', 'trovescott@gmail.com', '2018-12-04 14:50:31', '89.248.162.130'),
(152, '0', 'katie.moeser@gmail.com', '2018-12-04 14:53:56', '199.249.230.67'),
(153, '0', 'rizwankhan0814@gmail.com', '2018-12-04 16:41:33', '5.2.77.146'),
(154, '0', 'puntdekitty@aol.com', '2018-12-04 18:00:27', '51.15.82.2'),
(155, '0', 'keijo.r.c@gmail.com', '2018-12-04 18:20:33', '62.210.105.116'),
(156, '0', 'nataliebagby@yahoo.com', '2018-12-04 19:00:03', '185.220.102.8'),
(157, '0', 'watchmen49@gmail.com', '2018-12-04 19:02:09', '195.176.3.23'),
(158, '0', 'nataliebagby@yahoo.com', '2018-12-04 19:13:21', '80.67.172.162'),
(159, '0', 'kblast1955@aol.com', '2018-12-04 20:26:25', '46.38.235.14'),
(160, '0', 'ruby768414@aol.com', '2018-12-04 20:37:58', '18.85.22.239'),
(161, '0', 'yohanna_sampson@yahoo.com', '2018-12-04 21:02:21', '87.120.36.157'),
(162, '0', 'tonallen@aol.com', '2018-12-04 21:46:21', '185.220.101.7'),
(163, '0', 'kiarataylor@comcast.net', '2018-12-04 22:16:31', '144.217.7.33'),
(164, '0', 'msbillard@yourlink.ca', '2018-12-04 22:37:46', '209.141.45.212'),
(165, '0', 'begustafson@snet.net', '2018-12-04 22:50:45', '46.38.235.14'),
(166, '0', 'akeipe@yahoo.com', '2018-12-05 00:04:10', '195.176.3.20'),
(167, '0', 'richiegstyle@gmail.com', '2018-12-05 01:08:24', '95.130.9.90'),
(168, '0', 'lwblackmon@gmail.com', '2018-12-05 01:44:54', '185.220.102.7'),
(169, '0', 'skc1202@gmail.com', '2018-12-05 01:56:14', '176.10.99.200'),
(170, '0', 'crystaltovar1234@gmail.com', '2018-12-05 01:58:34', '80.67.172.162'),
(171, '0', 'clee760116@yahoo.com', '2018-12-05 03:41:32', '18.85.22.239'),
(172, '0', 'kartyea@gmail.com', '2018-12-05 03:52:53', '5.79.113.223'),
(173, '0', 'marierags@aol.com', '2018-12-05 04:01:06', '185.220.101.13'),
(174, '0', 'lwblackmon@gmail.com', '2018-12-05 04:18:17', '87.120.36.157'),
(175, '0', 'osama.mehana@yahoo.com', '2018-12-05 08:11:21', '178.32.147.150'),
(176, '0', 'reiki.joseluis@gmail.com', '2018-12-05 08:40:09', '185.220.101.33'),
(177, '0', 'alekazh@yahoo.com', '2018-12-05 08:46:35', '209.141.45.212'),
(178, '0', 'osama.mehana@yahoo.com', '2018-12-05 10:34:57', '89.234.157.254'),
(179, '0', 'watchmen49@gmail.com', '2018-12-05 11:49:42', '199.249.230.73'),
(180, '0', 'reiki.joseluis@gmail.com', '2018-12-05 12:02:00', '185.100.87.207'),
(181, '0', 'brandyesva@gmail.com', '2018-12-05 13:35:02', '185.107.70.202'),
(182, '0', 'alekazh@yahoo.com', '2018-12-05 13:58:56', '217.147.169.55'),
(183, '0', 'alekazh@yahoo.com', '2018-12-05 15:38:35', '173.249.31.49'),
(184, '0', 'jill.e.thomas@gmail.com', '2018-12-05 15:40:49', '104.244.76.13'),
(185, '0', 'dblon12@gmail.com', '2018-12-05 16:26:42', '212.16.104.33'),
(186, '0', 'martina.lenzo@gmail.com', '2018-12-05 17:04:52', '198.50.200.129'),
(187, '0', 'stupifyed1017@gmail.com', '2018-12-05 17:11:57', '176.10.99.200'),
(188, '0', 'jmhoope2@gmail.com', '2018-12-05 17:20:53', '89.234.157.254'),
(189, '0', 'sethforehan@yahoo.com', '2018-12-05 17:45:05', '193.90.12.116'),
(190, '0', 'trovescott@gmail.com', '2018-12-05 18:19:49', '163.172.67.180'),
(191, '0', 'jfranz965@yahoo.com', '2018-12-05 18:32:20', '80.67.172.162'),
(192, '0', 'defineyoury@yahoo.com', '2018-12-05 19:29:24', '65.19.167.131'),
(193, '0', 'palmerjohnathan1@gmail.com', '2018-12-05 19:39:21', '5.199.130.127'),
(194, '0', 'hohman@gmail.com', '2018-12-05 21:01:04', '163.172.151.47'),
(195, '0', 'shelwillis@gmail.com', '2018-12-05 21:10:22', '87.118.116.90'),
(196, '0', 'kevino1057@sbcglobal.net', '2018-12-05 23:05:57', '185.129.62.63'),
(197, '0', 'azis_fahri@yahoo.co.id', '2018-12-05 23:31:34', '51.77.0.80'),
(198, '0', 'edwards.mourice@gmail.com', '2018-12-05 23:41:34', '198.98.56.149'),
(199, '0', 'bidermanos@gmail.com', '2018-12-06 01:10:29', '204.17.56.42'),
(200, '0', 'agiletek@aol.com', '2018-12-06 01:13:14', '109.69.67.17'),
(201, '0', 'arsongz@gmail.com', '2018-12-06 02:01:38', '94.230.208.147'),
(202, '0', 'katie.capito@gmail.com', '2018-12-06 02:08:00', '85.202.163.127'),
(203, '0', 'jhuggins.fb@gmail.com', '2018-12-06 02:12:55', '195.176.3.19'),
(204, '0', 'zergaybashir@gmail.com', '2018-12-06 03:05:19', '185.220.101.32'),
(205, '0', 'taniacirej@gmail.com', '2018-12-06 03:16:22', '185.220.101.0'),
(206, '0', 'agiletek@aol.com', '2018-12-06 03:19:34', '51.15.234.90'),
(207, '0', 'bowlingfirepin@gmail.com', '2018-12-06 03:39:17', '109.69.67.17'),
(208, '0', 'bowlingfirepin@gmail.com', '2018-12-06 04:19:50', '94.230.208.147'),
(209, '0', 'bcadance@gmail.com', '2018-12-06 05:26:52', '185.94.190.211'),
(210, '0', 'trovescott@gmail.com', '2018-12-06 05:41:19', '192.42.116.22'),
(211, '0', 'dlumsey@yahoo.com', '2018-12-06 06:01:34', '87.118.116.90'),
(212, '0', 'shelwillis@gmail.com', '2018-12-06 13:22:42', '64.113.32.29'),
(213, '0', 'trovescott@gmail.com', '2018-12-06 13:56:35', '197.231.221.211'),
(214, '0', 'gary.smith.307761@gmail.com', '2018-12-06 15:54:04', '197.231.221.211'),
(215, '0', 'a_dermody1981@yahoo.com', '2018-12-06 15:54:50', '176.10.99.200'),
(216, '0', 'rizwankhan0814@gmail.com', '2018-12-06 16:11:11', '51.77.0.80'),
(217, '0', 'reiki.joseluis@gmail.com', '2018-12-06 16:13:44', '192.42.116.19'),
(218, '0', 'aspmarshall@gmail.com', '2018-12-06 16:24:54', '89.234.157.254'),
(219, '0', 'andrewucampbell@gmail.com', '2018-12-06 16:25:35', '65.19.167.131'),
(220, '0', 'queenbdo@aol.com', '2018-12-06 16:39:53', '109.69.67.17'),
(221, '0', 'breedlovekennett800@gmail.com', '2018-12-06 17:08:13', '94.102.55.78'),
(222, '0', 'poppyhill@reagan.com', '2018-12-06 18:09:46', '195.254.135.76'),
(223, '0', 'stacybadon@gmail.com', '2018-12-06 20:09:00', '198.98.56.149'),
(224, '0', 'mauriceissa41@gmail.com', '2018-12-06 21:26:23', '159.69.91.3'),
(225, '0', 'm_shulkina@yahoo.com', '2018-12-06 21:40:22', '171.25.193.25'),
(226, '0', 'mauriceissa41@gmail.com', '2018-12-06 23:02:49', '185.220.100.253'),
(227, '0', 'laureljns@aol.com', '2018-12-06 23:02:59', '185.220.102.4'),
(228, '0', 'stellmakerv@aol.com', '2018-12-07 00:12:42', '104.244.78.163'),
(229, '0', 'walterbost7@gmail.com', '2018-12-07 01:35:04', '162.247.74.206'),
(230, '0', 'stellmakerv@aol.com', '2018-12-07 02:35:22', '91.134.147.249'),
(231, '0', 'addwing.akj@gmail.com', '2018-12-07 02:43:22', '65.19.167.130'),
(232, '0', 'singerjamesc@gmail.com', '2018-12-07 03:08:09', '81.17.60.31'),
(233, '0', 'whoknowswhen@gmail.com', '2018-12-07 04:35:40', '185.220.101.34'),
(234, '0', 'yrrali@yahoo.com', '2018-12-07 05:35:33', '185.104.120.4'),
(235, '0', 'jon_duran@yahoo.com', '2018-12-07 07:28:56', '199.195.250.77'),
(236, '0', 'kailiye11@gmail.com', '2018-12-07 08:36:59', '172.103.94.91'),
(237, '0', 'gary.smith.307761@gmail.com', '2018-12-07 10:36:58', '185.220.102.6'),
(238, '0', 'addwing.akj@gmail.com', '2018-12-07 10:41:16', '198.98.56.149'),
(239, '0', 'michelle.l.mulholland@gmail.com', '2018-12-07 12:21:25', '87.118.116.12'),
(240, '0', 'redfox9203@gmail.com', '2018-12-07 12:31:22', '205.185.113.14'),
(241, '0', 'claynpr34@gmail.com', '2018-12-07 13:10:42', '192.160.102.169'),
(242, '0', 'pedromurillo65@gmail.com', '2018-12-07 13:49:54', '178.17.166.148'),
(243, '0', 'trinitay274@gmail.com', '2018-12-07 14:53:12', '195.176.3.19'),
(244, '0', 'dblon12@gmail.com', '2018-12-07 16:54:20', '65.19.167.131'),
(245, '0', 'chrisjuul98@gmail.com', '2018-12-07 16:56:34', '178.165.72.177'),
(246, '0', 'gtjennings@gmail.com', '2018-12-07 17:33:24', '185.220.102.7'),
(247, '0', 'bigteamtrucking1@gmail.com', '2018-12-07 18:00:34', '94.142.242.84'),
(248, '0', 'trinitay274@gmail.com', '2018-12-07 18:07:00', '91.219.236.171'),
(249, '0', 'elite1991.rg@gmail.com', '2018-12-07 18:45:33', '162.247.74.213'),
(250, '0', 'virginia.given@gmail.com', '2018-12-07 20:20:16', '193.169.145.194'),
(251, '0', 'jbr6566@aol.com', '2018-12-07 20:24:21', '207.244.70.35'),
(252, '0', 'misterkb24@gmail.com', '2018-12-07 21:10:16', '197.231.221.211'),
(253, '0', 'jeremia.mitchell@gmail.com', '2018-12-07 21:13:21', '198.98.61.36'),
(254, '0', 'kenhola@gmail.com', '2018-12-07 21:39:21', '87.120.36.157'),
(255, '0', 'misterkb24@gmail.com', '2018-12-07 22:38:26', '192.42.116.28'),
(256, '0', 'killingdanse@gmail.com', '2018-12-07 22:51:50', '92.63.103.241'),
(257, '0', 'juan.irurzun94@gmail.com', '2018-12-08 00:36:09', '65.19.167.132'),
(258, '0', 'misterkb24@gmail.com', '2018-12-08 13:33:46', '195.176.3.20'),
(259, '0', 'alchemyofherbs@gmail.com', '2018-12-08 16:22:37', '199.249.230.83'),
(260, '0', 'cpanciocco@yahoo.com', '2018-12-08 17:58:48', '185.165.168.168'),
(261, '0', 'alchemyofherbs@gmail.com', '2018-12-08 18:35:09', '199.249.230.65'),
(262, '0', 'trovescott@gmail.com', '2018-12-08 19:58:40', '199.249.223.47'),
(263, '0', 'jages13@gmail.com', '2018-12-08 20:34:34', '213.61.215.54'),
(264, '0', 'ecar5889@yahoo.com', '2018-12-08 20:36:59', '18.85.22.239'),
(265, '0', 'anneo5@aol.com', '2018-12-08 20:59:51', '185.62.188.88'),
(266, '0', 'rep1962@yahoo.com', '2018-12-08 22:49:22', '193.90.12.119'),
(267, '0', 'anneo5@aol.com', '2018-12-08 23:19:52', '137.74.169.241'),
(268, '0', 'officialuknow@gmail.com', '2018-12-09 01:34:43', '199.249.230.78'),
(269, '0', 'officialuknow@gmail.com', '2018-12-09 03:31:16', '51.15.99.115'),
(270, '0', 'greerjo@gmail.com', '2018-12-09 09:30:04', '158.174.122.218'),
(271, '0', 'jag9488@aol.com', '2018-12-09 10:55:56', '199.249.223.64'),
(272, '0', 'ingoflores88@gmail.com', '2018-12-09 13:34:00', '37.187.129.166'),
(273, '0', 'itimmermann@aol.com', '2018-12-09 15:41:02', '188.166.9.235'),
(274, '0', 'junglepixie22@gmail.com', '2018-12-09 17:45:46', '144.217.7.33'),
(275, '0', 'robertluye@gmail.com', '2018-12-09 18:08:43', '37.128.222.30'),
(276, '0', 'luey42n@aol.com', '2018-12-09 18:28:06', '94.102.55.78'),
(277, '0', 'jrwalls@aol.com', '2018-12-09 20:31:32', '209.141.45.212'),
(278, '0', 'kenhola@gmail.com', '2018-12-09 21:27:17', '178.17.166.146'),
(279, '0', 'gary.smith.307761@gmail.com', '2018-12-10 01:56:03', '198.167.223.38'),
(280, '0', 'mauriceissa41@gmail.com', '2018-12-10 02:04:16', '66.70.217.179'),
(281, '0', 'skittlekyd@gmail.com', '2018-12-10 02:27:23', '192.160.102.170'),
(282, '0', 'kenhola@gmail.com', '2018-12-10 02:37:32', '104.244.75.82'),
(283, '0', 'ramsay05@mts.net', '2018-12-10 04:15:35', '104.244.76.13'),
(284, '0', 'claynpr34@gmail.com', '2018-12-10 05:49:18', '85.248.227.165'),
(285, '0', 'cchimansilla@gmail.com', '2018-12-10 07:11:07', '204.85.191.31'),
(286, '0', 'bursahaliyikama.info@domstates.su', '2018-12-10 08:10:17', '188.92.74.189'),
(287, '0', 'roriehale@gmail.com', '2018-12-10 09:11:01', '51.15.235.211'),
(288, '0', 'the.mighty.mitch44@gmail.com', '2018-12-10 11:16:47', '192.42.116.20'),
(289, '0', 'juliarosetransport@gmail.com', '2018-12-10 13:18:42', '104.244.75.82'),
(290, '0', 'missy021671@yahoo.com', '2018-12-10 14:10:59', '195.176.3.23'),
(291, '0', 'rachelle.price03@yahoo.com', '2018-12-10 14:13:17', '18.85.22.239'),
(292, '0', 'talhaahmed474@gmail.com', '2018-12-10 15:09:10', '176.53.90.26'),
(293, '0', 'luludalray@yahoo.com', '2018-12-10 15:47:10', '204.85.191.31'),
(294, '0', 'luludalray@yahoo.com', '2018-12-10 15:54:02', '171.25.193.235'),
(295, '0', 'talhaahmed474@gmail.com', '2018-12-10 16:30:02', '185.220.102.4'),
(296, '0', 'ryankendall94@gmail.com', '2018-12-10 16:38:30', '82.223.14.245'),
(297, '0', 'jumbocakes@gmail.com', '2018-12-10 17:29:47', '77.247.181.165'),
(298, '0', 'robertluye@gmail.com', '2018-12-10 17:54:34', '163.172.41.228'),
(299, '0', 'ryuchemist@gmail.com', '2018-12-10 18:48:06', '51.75.253.147'),
(300, '0', 'kimedearc@aol.com', '2018-12-10 18:55:48', '185.107.47.171'),
(301, '0', 'swillensky@aol.com', '2018-12-10 19:05:56', '185.112.254.195'),
(302, '0', 'yan.qik09@gmail.com', '2018-12-10 22:05:14', '65.19.167.130'),
(303, '0', 'trovescott@gmail.com', '2018-12-10 23:00:00', '65.19.167.130'),
(304, '0', 'kitchenholders@gmail.com', '2018-12-11 01:21:35', '185.220.100.252'),
(305, '0', 'rep1962@yahoo.com', '2018-12-11 02:14:16', '217.147.169.58'),
(306, '0', 'edward@hhdinc.net', '2018-12-11 05:10:35', '178.17.174.198'),
(307, '0', 'harleymhs@aol.com', '2018-12-11 05:52:14', '185.220.101.3'),
(308, '0', 'shar.and.wes@gmail.com', '2018-12-11 06:24:17', '5.196.66.162'),
(309, '0', 'shar.and.wes@gmail.com', '2018-12-11 06:52:46', '197.231.221.211'),
(310, '0', 'silviap632@gmail.com', '2018-12-11 07:12:03', '185.83.214.6'),
(311, '0', 'springlovesun1990@gmail.com', '2018-12-11 12:28:30', '195.135.194.134'),
(312, '0', 'rebecca.kaupisch@googlemail.com', '2018-12-11 17:31:30', '158.69.203.224'),
(313, '0', 'gamistani2002@yahoo.com', '2018-12-11 18:11:22', '199.249.230.71'),
(314, '0', 'cstefan20@yahoo.com', '2018-12-11 18:46:03', '185.220.102.8'),
(315, '0', 'dmreed1983@gmail.com', '2018-12-11 18:58:20', '176.10.99.200'),
(316, '0', 'dmreed1983@gmail.com', '2018-12-11 19:00:11', '185.165.169.165'),
(317, '0', 'jalockhart78@yahoo.com', '2018-12-11 20:34:07', '158.174.122.218'),
(318, '0', 'jerratk@yahoo.com', '2018-12-11 22:06:14', '185.165.168.168'),
(319, '0', 'bgaudiosi@wolcottct.org', '2018-12-11 23:36:10', '199.249.230.70'),
(320, '0', 'lynchdavid@aol.com', '2018-12-11 23:38:15', '104.244.75.82'),
(321, '0', 'jerratk@yahoo.com', '2018-12-11 23:47:28', '185.101.216.149'),
(322, '0', 'schimmel.casey@gmail.com', '2018-12-12 00:14:34', '163.172.67.180'),
(323, '0', 'rneal@cctenn.org', '2018-12-12 00:29:28', '209.95.51.11'),
(324, '0', 'msblakeevans@gmail.com', '2018-12-12 00:31:31', '51.75.66.250'),
(325, '0', 'bigbadhopes05@aol.com', '2018-12-12 01:17:48', '209.141.45.212'),
(326, '0', 'slane75@gmail.com', '2018-12-12 01:33:32', '176.126.83.211'),
(327, '0', 'mezzy0192@gmail.com', '2018-12-12 05:16:41', '185.220.101.13'),
(328, '0', 'cltwbb@aol.com', '2018-12-12 08:53:23', '193.171.202.150'),
(329, '0', 'wolfalindsay@gmail.com', '2018-12-12 11:29:19', '193.171.202.150'),
(330, '0', 'juliegossett1@gmail.com', '2018-12-12 17:00:53', '158.255.3.37'),
(331, '0', 'bprater1968@att.net', '2018-12-12 18:29:20', '195.176.3.24'),
(332, '0', 'kamp-n@hetnet.nl', '2018-12-12 19:27:16', '199.249.230.72'),
(333, '0', 'jimcgriff@yahoo.com', '2018-12-12 19:30:44', '185.220.102.7'),
(334, '0', 'jspeer.5700@gmail.com', '2018-12-12 19:44:11', '195.176.3.20'),
(335, '0', 'bjcardiff5355@gmail.com', '2018-12-12 20:10:37', '104.244.76.13'),
(336, '0', 'ne.golfdesenart@gmail.com', '2018-12-12 20:14:26', '199.249.223.74'),
(337, '0', 'sfykes23@gmail.com', '2018-12-12 20:26:52', '192.42.116.17'),
(338, '0', 'dvangx00@gmail.com', '2018-12-12 20:47:44', '185.223.163.29'),
(339, '0', 'lyndatadams@gmail.com', '2018-12-12 21:21:59', '199.249.223.60'),
(340, '0', 'mrsharry2010@yahoo.com', '2018-12-12 22:40:49', '162.247.74.204'),
(341, '0', 'lynchdavid@aol.com', '2018-12-12 22:48:36', '87.118.116.12'),
(342, '0', 'wranglerdan@gmail.com', '2018-12-12 23:35:57', '197.231.221.211'),
(343, '0', 'ne.golfdesenart@gmail.com', '2018-12-12 23:43:10', '5.150.254.67'),
(344, '0', 'jspeer.5700@gmail.com', '2018-12-12 23:54:12', '185.220.101.12'),
(345, '0', 'heatherjahuja@gmail.com', '2018-12-13 01:26:05', '185.220.101.30'),
(346, '0', 'bjcardiff5355@gmail.com', '2018-12-13 02:08:45', '46.38.235.14'),
(347, '0', 'juliegossett1@gmail.com', '2018-12-13 03:59:30', '185.62.188.88'),
(348, '0', 'juliegossett1@gmail.com', '2018-12-13 04:25:08', '195.176.3.24'),
(349, '0', 'jabarris@gmail.com', '2018-12-13 06:23:16', '195.135.194.134'),
(350, '0', 'glendap311@gmail.com', '2018-12-13 06:49:05', '65.19.167.131'),
(351, '0', 'cnorouzi@gmail.com', '2018-12-13 13:13:25', '206.81.3.227'),
(352, '0', 'trovescott@gmail.com', '2018-12-13 13:15:47', '5.79.86.15'),
(353, '0', 'reginahansen@freenet.de', '2018-12-13 13:31:08', '194.71.109.44'),
(354, '0', 'willslanford@gmail.com', '2018-12-13 14:46:55', '104.244.78.163'),
(355, '0', 'megarandommadness@gmail.com', '2018-12-13 16:06:12', '46.17.46.199'),
(356, '0', 'ryankendall94@gmail.com', '2018-12-13 16:24:18', '192.99.247.1'),
(357, '0', 'kathryn.b.lauren@gmail.com', '2018-12-13 17:14:09', '199.249.230.81'),
(358, '0', 'trovescott@gmail.com', '2018-12-13 17:51:30', '173.244.209.5'),
(359, '0', 'iceezyhd@gmail.com', '2018-12-13 18:11:58', '204.85.191.30'),
(360, '0', 'scotti579@aol.com', '2018-12-13 19:54:30', '158.174.122.218'),
(361, '0', '1gozhak@gmail.com', '2018-12-13 21:16:06', '5.196.1.129'),
(362, '0', 'supermantonight@gmail.com', '2018-12-13 21:31:43', '204.85.191.31'),
(363, '0', 'sickler5@yahoo.com', '2018-12-13 23:38:32', '199.249.230.65'),
(364, '0', 'laura.robinson@elis.com', '2018-12-14 00:46:13', '216.218.222.14'),
(365, '0', 'javega2009@yahoo.com', '2018-12-14 00:49:26', '46.165.254.166'),
(366, '0', 'kriscmonte@yahoo.com', '2018-12-14 01:29:35', '91.219.236.171'),
(367, '0', 'bogdan.zelenikhin@gmail.com', '2018-12-14 01:57:09', '66.146.193.33'),
(368, '0', 'dimokaraboyukov@gmail.com', '2018-12-14 03:23:01', '199.249.230.72'),
(369, '0', 'eric@horizonyc.com', '2018-12-14 03:40:13', '185.220.101.7'),
(370, '0', 'lynchdavid@aol.com', '2018-12-14 04:56:27', '176.10.104.240'),
(371, '0', 'stevegarvin61@gmail.com', '2018-12-14 05:18:07', '94.230.208.148'),
(372, '0', 'ctm0061@gmail.com', '2018-12-14 05:56:15', '104.244.76.13'),
(373, '0', 'careymartell@gmail.com', '2018-12-14 08:36:47', '162.247.74.202'),
(374, '0', 'jjmarciano@aol.com', '2018-12-14 11:25:10', '87.120.36.157'),
(375, '0', 'ogk12@yahoo.com', '2018-12-14 14:05:17', '185.125.33.114'),
(376, '0', 'jimlohbauer@gmail.com', '2018-12-14 16:30:01', '199.249.223.71'),
(377, '0', 'jalj4242@gmail.com', '2018-12-14 17:16:32', '104.244.73.126'),
(378, '0', 'instantadvicenetwork@gmail.com', '2018-12-14 17:36:27', '204.85.191.30'),
(379, '0', 'stopshuttingitoff@gmail.com', '2018-12-14 18:09:42', '207.244.70.35'),
(380, '0', 'jivrajka@gmail.com', '2018-12-14 20:09:46', '199.249.230.75'),
(381, '0', 'sewpat2000@yahoo.com', '2018-12-14 20:13:56', '89.234.157.254'),
(382, '0', 'mike@twcooperinsurance.com', '2018-12-14 20:56:54', '5.79.86.15'),
(383, '0', 'katie.moeser@gmail.com', '2018-12-15 00:32:21', '176.10.99.200'),
(384, '0', 'mobilemail09@yahoo.com', '2018-12-15 00:51:16', '158.255.3.40'),
(385, '0', 'cherylschendel@gmail.com', '2018-12-15 02:52:10', '5.199.130.127'),
(386, '0', 'snickers3691@gmail.com', '2018-12-15 04:30:44', '46.4.86.164'),
(387, '0', 'rbid2@verizon.net', '2018-12-15 05:11:23', '216.218.222.12'),
(388, '0', 'wichi.coolface@gmail.com', '2018-12-15 07:34:57', '204.85.191.30'),
(389, '0', 'lynchdavid@aol.com', '2018-12-15 13:08:05', '85.248.227.165'),
(390, '0', 'alchemyofherbs@gmail.com', '2018-12-15 18:22:53', '185.220.101.28'),
(391, '0', 'jahnroze@gmail.com', '2018-12-15 20:59:28', '185.107.94.183'),
(392, '0', 'mauriceissa41@gmail.com', '2018-12-15 21:47:44', '51.15.106.67'),
(393, '0', 'alchemyofherbs@gmail.com', '2018-12-15 22:30:47', '178.17.166.147'),
(394, '0', 'trovescott@gmail.com', '2018-12-15 23:14:24', '176.31.180.157'),
(395, '0', 'andysullivan2000@gmail.com', '2018-12-15 23:24:45', '192.42.116.24'),
(396, '0', 'hilloscar5@gmail.com', '2018-12-16 00:04:54', '104.244.73.126'),
(397, '0', 'lbgoodwin@aol.com', '2018-12-16 00:13:05', '185.129.62.62'),
(398, '0', 'boeingsa@gmail.com', '2018-12-16 00:52:06', '94.230.208.147'),
(399, '0', 'goldwyn_rodricks@yahoo.com', '2018-12-16 01:38:20', '199.249.230.71'),
(400, '0', 'iceezyhd@gmail.com', '2018-12-16 01:55:26', '51.15.43.205'),
(401, '0', 'lynchdavid@aol.com', '2018-12-16 03:43:26', '185.220.101.50'),
(402, '0', 'justinfowens@gmail.com', '2018-12-16 08:58:44', '176.58.100.98'),
(403, '0', 'pline3rd@aol.com', '2018-12-16 14:27:06', '185.220.101.1'),
(404, '0', 'hilloscar5@gmail.com', '2018-12-16 16:21:02', '209.95.51.11'),
(405, '0', 'hilloscar5@gmail.com', '2018-12-16 16:25:05', '46.165.254.166'),
(406, '0', 'alijudymaster@yahoo.com', '2018-12-16 16:37:56', '89.248.162.130'),
(407, '0', 'jumbocakes@gmail.com', '2018-12-16 18:02:37', '199.249.230.72'),
(408, '0', 'mauriceissa41@gmail.com', '2018-12-16 18:16:23', '87.118.112.63'),
(409, '0', 'dblon12@gmail.com', '2018-12-16 18:58:32', '81.17.27.137'),
(410, '0', 'missinlady@aol.com', '2018-12-16 19:35:33', '94.102.51.78'),
(411, '0', 'z4myi@yahoo.com', '2018-12-16 21:14:14', '209.141.61.45'),
(412, '0', 'alijudymaster@yahoo.com', '2018-12-16 21:44:57', '199.249.230.64'),
(413, '0', 'estevan.gonzalez1@gmail.com', '2018-12-16 22:36:10', '46.38.235.14'),
(414, '0', 'megarandommadness@gmail.com', '2018-12-16 22:44:15', '51.15.43.205'),
(415, '0', 'pline3rd@aol.com', '2018-12-16 22:46:42', '185.220.101.3'),
(416, '0', 'thiagopatrickanjos@gmail.com', '2018-12-16 23:15:36', '185.104.120.5'),
(417, '0', 'jsk117@comcast.net', '2018-12-16 23:53:04', '193.171.202.150'),
(418, '0', 'xwx946469@gmail.com', '2018-12-17 00:07:35', '185.220.101.49'),
(419, '0', 'wadegreta@aol.com', '2018-12-17 00:16:29', '31.185.104.21'),
(420, '0', 'abraxagar@gmail.com', '2018-12-17 01:02:40', '46.173.214.3'),
(421, '0', 'astevensrr1k@gmail.com', '2018-12-17 05:09:09', '37.233.103.114'),
(422, '0', 'lynchdavid@aol.com', '2018-12-17 06:38:48', '185.220.101.13'),
(423, '0', 'kathrynparry71@gmail.com', '2018-12-17 13:20:17', '162.213.3.221'),
(424, '0', 'goosebump4@yahoo.com', '2018-12-17 14:51:19', '199.249.230.68'),
(425, '0', 'z.xu@domarsolutions.com', '2018-12-17 16:05:05', '65.19.167.132'),
(426, '0', 'allinfunamusements@gmail.com', '2018-12-17 18:20:43', '197.231.221.211'),
(427, '0', 'hoag.jenn@gmail.com', '2018-12-17 19:42:12', '31.185.104.20'),
(428, '0', 'pridevea@gmail.com', '2018-12-17 21:44:50', '185.220.101.52'),
(429, '0', 'lenybrook@gmail.com', '2018-12-17 22:07:16', '192.42.116.13'),
(430, '0', 'tsummers45@yahoo.com', '2018-12-17 22:16:14', '185.220.101.32'),
(431, '0', 'pline3rd@aol.com', '2018-12-17 22:57:05', '176.10.99.200'),
(432, '0', 'cguinn03@gmail.com', '2018-12-17 23:02:37', '185.220.101.46'),
(433, '0', 'pansabe@aol.com', '2018-12-17 23:14:38', '95.128.43.164'),
(434, '0', 'robertverdahl@gmail.com', '2018-12-18 01:04:39', '65.19.167.130'),
(435, '0', 'teconshop@aol.com', '2018-12-18 02:33:23', '185.100.87.206'),
(436, '0', 'martingerbrandy@gmail.com', '2018-12-18 06:27:35', '171.25.193.78'),
(437, '0', 'poppyhill@reagan.com', '2018-12-18 15:09:51', '199.249.230.76'),
(438, '0', 'snelson220@yahoo.com', '2018-12-18 15:55:54', '185.220.101.31'),
(439, '0', 'pline3rd@aol.com', '2018-12-18 16:07:11', '85.202.163.127'),
(440, '0', 'jahnroze@gmail.com', '2018-12-18 16:21:16', '85.248.227.165'),
(441, '0', 'ronanmcdonachaa@gmail.com', '2018-12-18 20:29:22', '185.220.102.4'),
(442, '0', 'terrenfontenot@gmail.com', '2018-12-18 20:31:41', '195.176.3.23'),
(443, '0', 'cherikimmel99@gmail.com', '2018-12-18 21:22:24', '195.176.3.23'),
(444, '0', 'ap@azarahealthcare.com', '2018-12-18 23:09:20', '51.15.205.214'),
(445, '0', 'mfrago9@aol.com', '2018-12-19 00:12:50', '37.220.36.240'),
(446, '0', 'sabcab13@yahoo.com', '2018-12-19 01:26:39', '185.220.101.26'),
(447, '0', 'davenshelly@gmail.com', '2018-12-19 02:07:35', '185.220.101.53'),
(448, '0', 'lanierkd3@gmail.com', '2018-12-19 02:25:34', '51.15.155.2'),
(449, '0', 'aravinthtop@gmail.com', '2018-12-19 03:15:24', '185.220.101.46'),
(450, '0', 'albert15.bf@gmail.com', '2018-12-19 04:45:05', '199.68.196.124'),
(451, '0', 'lynchdavid@aol.com', '2018-12-19 05:18:16', '51.15.235.211'),
(452, '0', 'lildragonanish1@gmail.com', '2018-12-19 08:16:35', '197.231.221.211'),
(453, '0', 'tammbray@aol.com', '2018-12-19 08:34:32', '164.132.51.91'),
(454, '0', 'bobmacdonald311@gmail.com', '2018-12-19 10:06:06', '37.139.8.104'),
(455, '0', 'yexsonventura54@gmail.com', '2018-12-19 11:58:06', '198.96.155.3'),
(456, '0', 'tammbray@aol.com', '2018-12-19 13:36:06', '185.220.101.48'),
(457, '0', 'mystwlker@yahoo.com', '2018-12-19 16:27:49', '178.17.174.198'),
(458, '0', 'jumbocakes@gmail.com', '2018-12-19 17:24:34', '46.38.235.14'),
(459, '0', 'furniturewarehouse1@yahoo.com', '2018-12-19 19:25:25', '51.15.205.214'),
(460, '0', 'mzobama@yahoo.com', '2018-12-19 19:34:43', '185.220.101.44'),
(461, '0', 'darkman2k5@yahoo.com', '2018-12-19 19:49:27', '185.220.101.13'),
(462, '0', 'sunshine0050@aol.com', '2018-12-19 20:18:05', '199.249.230.69'),
(463, '0', 'wsander1@gmail.com', '2018-12-19 21:07:41', '37.187.180.18'),
(464, '0', 'pilotheriberto@yahoo.com', '2018-12-19 22:41:52', '176.10.99.200'),
(465, '0', 'kydoreen17@aol.com', '2018-12-19 23:10:51', '185.107.47.215'),
(466, '0', 'dreamyriley@gmail.com', '2018-12-19 23:58:35', '185.107.94.183'),
(467, '0', 'info@dominic-keller.de', '2018-12-20 00:05:49', '162.213.3.221'),
(468, '0', 'chauchau1269@gmail.com', '2018-12-20 00:15:06', '178.17.166.147'),
(469, '0', 'ibjanell@gmail.com', '2018-12-20 00:16:37', '185.220.101.9'),
(470, '0', 'joycelyn_neal4@yahoo.com', '2018-12-20 00:31:16', '163.172.132.199'),
(471, '0', 'nara28@aol.com', '2018-12-20 00:39:02', '185.104.120.5'),
(472, '0', 'romabey1970@yahoo.com', '2018-12-20 01:00:14', '37.139.8.104'),
(473, '0', 'jena_alia15@yahoo.com', '2018-12-20 04:42:57', '66.70.217.179'),
(474, '0', 'peter.imbres@gmail.com', '2018-12-20 05:28:36', '185.220.101.6'),
(475, '0', 'jonathan.hoover01@gmail.com', '2018-12-20 10:08:53', '185.220.101.1'),
(476, '0', 'lenybrook@gmail.com', '2018-12-20 13:39:04', '185.220.101.1'),
(477, '0', 'hummingbirdcasper@gmail.com', '2018-12-20 13:44:09', '192.42.116.20'),
(478, '0', 'mph2122@gmail.com', '2018-12-20 14:01:44', '171.25.193.235'),
(479, '0', 'femina.jaffer@gmail.com', '2018-12-20 14:11:56', '46.4.148.27'),
(480, '0', 'hummingbirdcasper@gmail.com', '2018-12-20 14:38:32', '81.17.27.137'),
(481, '0', 'cjohansson2000@gmail.com', '2018-12-20 15:24:46', '91.236.116.101'),
(482, '0', 'mitchellmc328@gmail.com', '2018-12-20 16:02:07', '199.249.230.85'),
(483, '0', 'badermd@gmail.com', '2018-12-20 16:03:14', '192.42.116.16'),
(484, '0', 'pline3rd@aol.com', '2018-12-20 16:14:46', '185.220.101.49'),
(485, '0', 'coniceh@gmail.com', '2018-12-20 17:40:54', '198.98.61.36'),
(486, '0', 'henaojp@upmc.edu', '2018-12-20 18:48:34', '107.155.49.114'),
(487, '0', 'chauchau1269@gmail.com', '2018-12-20 18:50:43', '199.249.230.69'),
(488, '0', 'derele420@gmail.com', '2018-12-20 18:58:55', '65.19.167.130'),
(489, '0', 'kimstclaire@gmail.com', '2018-12-20 20:10:21', '51.15.240.100'),
(490, '0', 'jamie.douglas@sympatico.ca', '2018-12-20 20:27:47', '185.65.205.10'),
(491, '0', 'sebastian.van.dijen@gmx.de', '2018-12-20 21:18:16', '85.202.163.127'),
(492, '0', 'burnham.ms@gmail.com', '2018-12-21 00:10:43', '130.149.80.199'),
(493, '0', 'karinaortegako@aol.com', '2018-12-21 00:14:36', '104.244.78.163'),
(494, '0', 'spidermansrt@yahoo.com', '2018-12-21 02:29:33', '158.174.122.218'),
(495, '0', 'yexsonventura54@gmail.com', '2018-12-21 03:55:20', '188.214.104.146'),
(496, '0', 'jrickey0225@gmail.com', '2018-12-21 04:44:27', '207.244.70.35'),
(497, '0', 'stradagos@gmail.com', '2018-12-21 05:20:27', '185.220.101.46'),
(498, '0', 'yexsonventura54@gmail.com', '2018-12-21 06:58:56', '185.220.101.20'),
(499, '0', 'exist123ride@yahoo.com', '2018-12-21 07:22:00', '199.249.230.77'),
(500, '0', 'bry_angelo@yahoo.com', '2018-12-21 08:14:27', '104.244.76.13'),
(501, '0', 'noahakaplan@gmail.com', '2018-12-21 09:30:36', '176.10.99.200'),
(502, '0', 'mph2122@gmail.com', '2018-12-21 14:16:26', '85.202.163.127'),
(503, '0', 'z4myi@yahoo.com', '2018-12-21 14:46:34', '5.101.40.89'),
(504, '0', 'mph2122@gmail.com', '2018-12-21 15:14:05', '198.98.58.135'),
(505, '0', 'trovescott@gmail.com', '2018-12-21 15:44:56', '199.249.230.83'),
(506, '0', 'trovescott@gmail.com', '2018-12-21 16:44:24', '158.174.122.218'),
(507, '0', 'mauriceissa41@gmail.com', '2018-12-21 18:25:32', '51.15.234.90'),
(508, '0', 'fyann64@aol.com', '2018-12-21 19:07:18', '18.85.22.239'),
(509, '0', 'jrderuki@gmail.com', '2018-12-21 19:51:31', '91.121.112.181'),
(510, '0', 'matmcwilliam@mail.com', '2018-12-21 20:13:29', '176.10.99.200'),
(511, '0', 'halcombnancy@yahoo.com', '2018-12-21 20:29:05', '144.217.60.239'),
(512, '0', 'hayzur30@aol.com', '2018-12-21 22:27:47', '176.10.104.240'),
(513, '0', 'bry_angelo@yahoo.com', '2018-12-22 00:02:05', '195.189.96.147'),
(514, '0', 'courtneyhughes30@gmail.com', '2018-12-22 00:03:44', '199.249.230.80'),
(515, '0', 'nshortman@aol.com', '2018-12-22 00:54:42', '185.104.120.4'),
(516, '0', 'ray_sparhawk@yahoo.com', '2018-12-22 01:17:23', '46.165.230.5'),
(517, '0', 'cvannoy55@gmail.com', '2018-12-22 01:31:46', '158.174.122.218'),
(518, '0', 'mkgrinnell@gmail.com', '2018-12-22 04:31:11', '195.176.3.19'),
(519, '0', 'joannartiles@yahoo.com', '2018-12-22 04:59:56', '209.141.61.45'),
(520, '0', 'tonigreen0220@gmail.com', '2018-12-22 05:07:36', '91.121.112.181'),
(521, '0', 'sheri_gallagher@yahoo.com', '2018-12-22 05:21:31', '209.95.51.11'),
(522, '0', 'derele420@gmail.com', '2018-12-22 15:25:02', '137.74.167.96'),
(523, '0', 'jeanette.espie@gmail.com', '2018-12-22 16:23:09', '205.185.117.240'),
(524, '0', 'nathalieamato@gmail.com', '2018-12-22 16:40:51', '104.244.76.50'),
(525, '0', 'luckyduck1560@gmail.com', '2018-12-22 17:29:03', '66.70.217.179'),
(526, '0', 'davideitel.medical@gmail.com', '2018-12-22 17:47:53', '185.220.102.7'),
(527, '0', 'ashavers16@gmail.com', '2018-12-22 18:42:20', '199.249.230.65'),
(528, '0', 'megarandommadness@gmail.com', '2018-12-22 19:23:22', '185.100.87.158'),
(529, '0', 'djdees777@yahoo.com', '2018-12-22 19:58:36', '158.174.122.218'),
(530, '0', 'jamaievans@yahoo.com', '2018-12-22 20:39:59', '185.220.102.6'),
(531, '0', 'lynchdavid@aol.com', '2018-12-22 20:46:34', '81.17.27.134'),
(532, '0', 'jumbocakes@gmail.com', '2018-12-22 22:12:58', '37.187.129.166'),
(533, '0', 'z4myi@yahoo.com', '2018-12-22 22:51:53', '94.230.208.147'),
(534, '0', 'jrderuki@gmail.com', '2018-12-22 23:06:08', '192.99.247.1'),
(535, '0', 'alchemyofherbs@gmail.com', '2018-12-22 23:17:07', '171.25.193.235'),
(536, '0', 'gregvv127@gmail.com', '2018-12-22 23:20:44', '37.139.8.104'),
(537, '0', 'brittanylowden@aol.com', '2018-12-23 01:44:17', '85.202.163.127'),
(538, '0', 'hizapro@gmail.com', '2018-12-23 12:10:41', '185.220.101.26'),
(539, '0', 'lynchdavid@aol.com', '2018-12-23 14:46:50', '185.220.101.54'),
(540, '0', 'megarandommadness@gmail.com', '2018-12-23 20:54:13', '104.194.228.240'),
(541, '0', 'evilskin@gmail.com', '2018-12-23 21:19:27', '51.38.134.189'),
(542, '0', 'acmagan@gmail.com', '2018-12-23 21:36:32', '185.220.101.30'),
(543, '0', 'tjjacksonsm@gmail.com', '2018-12-23 21:57:39', '185.104.120.5'),
(544, '0', 'trovescott@gmail.com', '2018-12-23 22:11:59', '185.220.102.8'),
(545, '0', 'megarandommadness@gmail.com', '2018-12-23 22:23:34', '62.210.105.116'),
(546, '0', 'derele420@gmail.com', '2018-12-23 22:49:44', '62.210.37.82'),
(547, '0', 'levshtr@gmail.com', '2018-12-24 02:06:18', '199.249.230.76'),
(548, '0', 'derele420@gmail.com', '2018-12-24 02:42:54', '192.42.116.27'),
(549, '0', 'lynchdavid@aol.com', '2018-12-24 04:30:53', '207.244.70.35'),
(550, '0', 'wvbrown@att.net', '2018-12-24 04:43:36', '185.220.101.3'),
(551, '0', 'pline3rd@aol.com', '2018-12-24 13:10:46', '197.231.221.211'),
(552, '0', 'op@gkrascvetai.ru', '2018-12-24 13:33:00', '178.17.174.196'),
(553, '0', 'rfdkottwitz@yahoo.com', '2018-12-24 13:41:27', '37.187.180.18'),
(554, '0', 'rpercey1@yahoo.com', '2018-12-24 14:49:20', '163.172.215.253'),
(555, '0', 'kerensegev@gmail.com', '2018-12-24 16:15:13', '199.249.230.72'),
(556, '0', 'dexters1324@gmail.com', '2018-12-24 16:58:58', '178.17.174.198'),
(557, '0', 'richwilliam2580@gmail.com', '2018-12-24 17:59:50', '185.220.102.7'),
(558, '0', 'mixed83.nd@gmail.com', '2018-12-24 19:37:25', '51.15.68.66'),
(559, '0', 'brenden.yung@gmail.com', '2018-12-24 20:35:10', '213.61.215.54'),
(560, '0', 'jesusmysaviour012@gmail.com', '2018-12-24 20:55:20', '185.220.102.4'),
(561, '0', 'jamaievans@yahoo.com', '2018-12-24 22:23:32', '51.15.124.1'),
(562, '0', 'tjjacksonsm@gmail.com', '2018-12-24 23:42:51', '185.163.45.38'),
(563, '0', 'mark.fragassi@gmail.com', '2018-12-25 03:10:48', '51.77.193.218'),
(564, '0', 'mixed83.nd@gmail.com', '2018-12-25 04:30:34', '173.249.63.21'),
(565, '0', 'gec_dolor@yahoo.com', '2018-12-25 04:56:08', '85.248.227.163'),
(566, '0', 'tjjacksonsm@gmail.com', '2018-12-25 07:59:46', '51.15.124.1'),
(567, '0', 'tjjacksonsm@gmail.com', '2018-12-25 08:50:25', '137.74.169.241'),
(568, '0', 'angelarmann@gmail.com', '2018-12-25 10:25:04', '204.85.191.30'),
(569, '0', 'cm.esposito@yahoo.com', '2018-12-25 11:30:47', '185.100.87.158'),
(570, '0', 'davideitel.medical@gmail.com', '2018-12-25 15:14:55', '185.220.101.30'),
(571, '0', 'mark.fragassi@gmail.com', '2018-12-25 15:19:52', '51.15.205.214'),
(572, '0', 'megarandommadness@gmail.com', '2018-12-25 15:29:15', '104.244.78.53'),
(573, '0', 'andrewford3610@gmail.com', '2018-12-25 17:17:04', '176.10.99.200'),
(574, '0', 'devemile@gmail.com', '2018-12-25 18:39:29', '199.249.230.69'),
(575, '0', 'devemile@gmail.com', '2018-12-25 19:08:58', '198.50.200.131'),
(576, '0', 'murrayprazak@gmail.com', '2018-12-25 20:05:37', '37.187.129.166'),
(577, '0', 'saxonstyx@comcast.net', '2018-12-25 21:10:53', '37.187.180.18'),
(578, '0', 'lindadiane6@yahoo.com', '2018-12-25 21:11:20', '185.220.101.10'),
(579, '0', 'derele420@gmail.com', '2018-12-25 21:40:04', '199.249.230.83'),
(580, '0', 'lbonds3@yahoo.com', '2018-12-25 22:47:59', '138.197.177.62'),
(581, '0', 'jumbocakes@gmail.com', '2018-12-25 23:24:45', '46.17.46.199'),
(582, '0', 'danielle.w.lingle@gmail.com', '2018-12-25 23:26:50', '185.220.101.13'),
(583, '0', 'tjjacksonsm@gmail.com', '2018-12-25 23:30:55', '46.165.230.5'),
(584, '0', 'spitshine_sonata@yahoo.com', '2018-12-26 00:47:40', '163.172.67.180'),
(585, '0', 'jonathan.g.bristow@gmail.com', '2018-12-26 01:07:45', '164.132.51.91'),
(586, '0', 'angelarmann@gmail.com', '2018-12-26 01:27:50', '51.15.235.211'),
(587, '0', 'danielle.w.lingle@gmail.com', '2018-12-26 01:32:01', '185.220.101.48'),
(588, '0', 'goloso333@yahoo.com', '2018-12-26 01:42:43', '185.220.101.44'),
(589, '0', 'davideitel.medical@gmail.com', '2018-12-26 02:23:32', '199.195.250.77'),
(590, '0', 'terje.granvang@arntzendebesche.no', '2018-12-26 05:49:00', '185.220.101.28'),
(591, '0', 'olex.david@gmail.com', '2018-12-26 08:57:02', '185.220.101.13'),
(592, '0', 'cheetohead96@gmail.com', '2018-12-26 13:40:16', '185.104.120.3'),
(593, '0', 'andrewford3610@gmail.com', '2018-12-26 15:08:28', '185.129.62.63'),
(594, '0', 'autoraton@seznam.cz', '2018-12-26 16:01:43', '185.193.125.115'),
(595, '0', 'jamaievans@yahoo.com', '2018-12-26 20:09:15', '185.220.101.31'),
(596, '0', 'carmen_glass43@yahoo.com', '2018-12-26 21:09:15', '193.171.202.150'),
(597, '0', 'andrewford3610@gmail.com', '2018-12-26 21:23:04', '176.126.83.211'),
(598, '0', 'ggilbert@palms.net', '2018-12-26 22:54:58', '185.233.100.23'),
(599, '0', 'dave-falater@amc.mitsuba-gr.com', '2018-12-26 23:21:28', '91.219.236.171'),
(600, '0', 'm.liliaofelia@gmail.com', '2018-12-26 23:24:53', '51.15.235.211'),
(601, '0', 'm.liliaofelia@gmail.com', '2018-12-27 01:41:53', '18.85.22.239'),
(602, '0', 'bhsahlberg@gmail.com', '2018-12-27 02:30:17', '178.17.166.146'),
(603, '0', 'mark.fragassi@gmail.com', '2018-12-27 04:04:33', '158.174.122.218'),
(604, '0', 'mark.fragassi@gmail.com', '2018-12-27 05:11:57', '193.90.12.115'),
(605, '0', 'lynchdavid@aol.com', '2018-12-27 05:30:26', '94.230.208.148'),
(606, '0', 'contactjasonyoung@gmail.com', '2018-12-27 06:07:16', '91.219.236.189'),
(607, '0', 'convairazo580@gmail.com', '2018-12-27 06:38:26', '162.247.74.27'),
(608, '0', 'rollintools@gmail.com', '2018-12-27 06:49:29', '18.85.22.239'),
(609, '0', 'justintmercer@gmail.com', '2018-12-27 10:55:01', '164.132.51.91'),
(610, '0', 'contactjasonyoung@gmail.com', '2018-12-27 12:13:39', '185.220.101.9'),
(611, '0', 'sidney.shapiro@gmail.com', '2018-12-27 12:19:01', '185.220.102.7'),
(612, '0', 'maliah.holifield@yahoo.com', '2018-12-27 13:13:38', '162.247.74.206'),
(613, '0', 'maliah.holifield@yahoo.com', '2018-12-27 13:18:46', '37.187.129.166'),
(614, '0', 'sdjent@earthlink.net', '2018-12-27 14:21:06', '195.254.134.242'),
(615, '0', 'sidney.shapiro@gmail.com', '2018-12-27 14:27:30', '192.42.116.16'),
(616, '0', 'm.liliaofelia@gmail.com', '2018-12-27 20:29:09', '198.96.155.3'),
(617, '0', 'prodygee@aol.com', '2018-12-27 23:00:52', '144.217.80.80'),
(618, '0', 'georgesigala@gmail.com', '2018-12-27 23:31:30', '185.220.101.34'),
(619, '0', 'm.liliaofelia@gmail.com', '2018-12-28 00:31:04', '209.141.45.212'),
(620, '0', 'sidney.shapiro@gmail.com', '2018-12-28 02:38:55', '77.247.181.165'),
(621, '0', 'lennox.allison@gmail.com', '2018-12-28 03:22:33', '194.68.44.88'),
(622, '0', 'becky.roskop@gmail.com', '2018-12-28 06:31:31', '104.244.76.50'),
(623, '0', 'luneburg24@aol.com', '2018-12-28 07:09:41', '199.249.230.86'),
(624, '0', 'robert.truett@gmail.com', '2018-12-28 07:24:30', '176.126.83.211'),
(625, '0', 'neilpeters2586@yahoo.com', '2018-12-28 09:06:28', '195.176.3.19'),
(626, '0', 'robert.truett@gmail.com', '2018-12-28 09:24:30', '85.248.227.164'),
(627, '0', 'billybelanger7@gmail.com', '2018-12-28 12:17:41', '199.249.230.68'),
(628, '0', 'andreigoaga@gmail.com', '2018-12-28 14:08:54', '199.249.223.66'),
(629, '0', 'chomplearn_2001@yahoo.com', '2018-12-28 16:23:53', '195.123.221.122'),
(630, '0', 'damienturpin999@gmail.com', '2018-12-28 16:42:48', '91.219.236.171'),
(631, '0', 'nicholas.k.leonard@gmail.com', '2018-12-28 16:44:37', '77.247.181.162'),
(632, '0', 'megarandommadness@gmail.com', '2018-12-28 17:38:03', '188.166.9.235'),
(633, '0', 'jan.northe632@gmail.com', '2018-12-28 18:22:02', '171.25.193.235'),
(634, '0', 'ktkatacska@gmail.com', '2018-12-28 18:50:59', '95.130.9.90'),
(635, '0', 'greggray82@aol.com', '2018-12-28 21:06:14', '51.15.124.1'),
(636, '0', 'nickynaumann@gmx.de', '2018-12-28 21:20:55', '185.220.101.45'),
(637, '0', 'rostani1@yahoo.com', '2018-12-28 21:24:07', '193.90.12.116'),
(638, '0', 'kathie.dubin.tvn@gmail.com', '2018-12-28 21:48:43', '185.220.101.12'),
(639, '0', 'dfwcn.wcato@gmail.com', '2018-12-29 01:00:47', '198.98.58.135'),
(640, '0', 'trovescott@gmail.com', '2018-12-29 02:20:36', '198.96.155.3'),
(641, '0', 'juanamunoz03@yahoo.com', '2018-12-29 02:33:40', '77.247.181.162'),
(642, '0', 'nickynaumann@gmx.de', '2018-12-29 02:36:02', '77.247.181.162'),
(643, '0', 'piersallg@aol.com', '2018-12-29 03:37:24', '185.220.101.50'),
(644, '0', 'belenmarquez31@gmail.com', '2018-12-29 03:53:22', '37.187.129.166'),
(645, '0', 'belenmarquez31@gmail.com', '2018-12-29 06:31:22', '130.149.80.199'),
(646, '0', 'jan.northe632@gmail.com', '2018-12-29 08:38:25', '185.220.100.253'),
(647, '0', 'tulips2765@aol.com', '2018-12-29 11:03:28', '158.174.122.218'),
(648, '0', 'belenmarquez31@gmail.com', '2018-12-29 11:28:50', '195.176.3.24'),
(649, '0', 'harryrea65@yahoo.de', '2018-12-29 12:44:26', '204.85.191.31'),
(650, '0', 'lbsoftstuff@gmail.com', '2018-12-29 13:28:34', '197.231.221.211'),
(651, '0', 'coryboy345@yahoo.com', '2018-12-29 16:18:57', '51.75.253.147'),
(652, '0', 'virensarla@gmail.com', '2018-12-29 17:12:20', '198.73.50.71'),
(653, '0', 'contactjasonyoung@gmail.com', '2018-12-29 19:11:56', '185.147.80.155'),
(654, '0', 'adriana007ksscruggs@gmail.com', '2018-12-29 19:35:09', '195.189.96.147'),
(655, '0', 'ashleyspackllc@gmail.com', '2018-12-29 19:43:32', '171.25.193.77'),
(656, '0', 'kursedkyuubi@gmail.com', '2018-12-29 19:49:06', '199.249.230.68'),
(657, '0', 'laken.ramey99@yahoo.com', '2018-12-29 19:59:01', '185.220.102.4'),
(658, '0', 'andrewford3610@gmail.com', '2018-12-29 21:39:14', '185.165.168.229'),
(659, '0', 'lynchdavid@aol.com', '2018-12-29 21:58:05', '51.15.43.205'),
(660, '0', 'belenmarquez31@gmail.com', '2018-12-29 22:09:58', '37.233.103.114'),
(661, '0', 'virensarla@gmail.com', '2018-12-30 01:32:21', '162.247.74.200'),
(662, '0', 'mvitale06@gmail.com', '2018-12-30 01:38:27', '163.172.215.253'),
(663, '0', 'belenmarquez31@gmail.com', '2018-12-30 03:46:46', '109.69.67.17'),
(664, '0', 'marathon@gmail.com', '2018-12-30 05:23:07', '94.102.51.78');
INSERT INTO `maillist` (`id`, `fullname`, `email`, `date`, `ip`) VALUES
(665, '0', 'belenmarquez31@gmail.com', '2018-12-30 06:59:06', '163.172.67.180'),
(666, '0', 'bocoopermx@gmail.com', '2018-12-30 08:00:41', '198.98.56.149'),
(667, '0', 'trovescott@gmail.com', '2018-12-30 08:04:49', '185.107.70.202'),
(668, '0', 'elimelmiranda@yahoo.com', '2018-12-30 09:25:45', '94.230.208.148'),
(669, '0', 'davideitel.medical@gmail.com', '2018-12-30 16:25:24', '199.249.230.75'),
(670, '0', 'himura.kenshin.aj@gmail.com', '2018-12-30 19:31:00', '195.176.3.20'),
(671, '0', 'lbsoftstuff@gmail.com', '2018-12-31 11:15:22', '37.187.129.166'),
(672, '0', 'megarandommadness@gmail.com', '2018-12-31 12:08:03', '62.102.148.67'),
(673, '0', 'kimberlycullen07@yahoo.co.uk', '2018-12-31 14:41:04', '62.210.71.205'),
(674, '0', 'babynou1962@gmail.com', '2018-12-31 21:53:53', '171.25.193.25'),
(675, '0', 'kedari.a.matthews@gmail.com', '2018-12-31 22:53:02', '199.249.230.73'),
(676, '0', 'gjasper1261@gmail.com', '2019-01-01 02:02:31', '77.247.181.163'),
(677, '0', 'alpinejava@yahoo.com', '2019-01-01 12:23:59', '185.220.102.6'),
(678, '0', 'lessonswithdena@gmail.com', '2019-01-01 19:43:38', '158.69.193.32'),
(679, '0', 'fxe-75@comcast.net', '2019-01-02 02:20:25', '185.220.101.13'),
(680, '0', 'akhil232@gmail.com', '2019-01-02 06:43:41', '51.254.209.128'),
(681, '0', 'ursula.smalls@yahoo.com', '2019-01-02 06:59:53', '185.220.101.33'),
(682, '0', 'sdiamond85@aol.com', '2019-01-02 07:33:50', '77.247.181.165'),
(683, '0', 'derele420@gmail.com', '2019-01-02 07:38:24', '130.149.80.199'),
(684, '0', 'petarrasfc@gmail.com', '2019-01-02 08:32:58', '178.17.174.196'),
(685, '0', 'tommyxps@gmail.com', '2019-01-02 09:00:50', '37.233.102.65'),
(686, '0', 'mvitale06@gmail.com', '2019-01-02 09:51:00', '185.220.101.33'),
(687, '0', 'jamaievans@yahoo.com', '2019-01-02 11:06:19', '185.220.101.8'),
(688, '0', 'tuanchristimtran@yahoo.com', '2019-01-02 14:02:14', '104.244.76.13'),
(689, '0', 'trovescott@gmail.com', '2019-01-02 16:14:13', '158.174.122.218'),
(690, '0', 'jcline1223@gmail.com', '2019-01-02 16:26:11', '158.69.193.32'),
(691, '0', '592boren@gmail.com', '2019-01-02 18:17:42', '37.233.103.114'),
(692, '0', 'pellyrat1947@gmail.com', '2019-01-02 20:20:41', '176.10.104.240'),
(693, '0', 'derele420@gmail.com', '2019-01-02 20:57:21', '209.141.45.212'),
(694, '0', 'katherina.zotos@gmail.com', '2019-01-03 02:14:50', '162.247.74.216'),
(695, '0', 'oberloh777@gmail.com', '2019-01-03 04:17:52', '206.81.3.227'),
(696, '0', 'crystal.berg2012@gmail.com', '2019-01-03 05:24:15', '185.220.102.8'),
(697, '0', 'hoppingus@gmail.com', '2019-01-03 06:04:48', '195.176.3.24'),
(698, '0', 'troubledownunder@gmail.com', '2019-01-03 06:53:32', '96.70.31.155'),
(699, '0', 'zacharywvogel@gmail.com', '2019-01-03 07:08:47', '178.17.166.149'),
(700, '0', 'yubojin1995@gmail.com', '2019-01-03 07:09:42', '145.239.210.106'),
(701, '0', 'dramaalertads@gmail.com', '2019-01-03 07:14:58', '51.15.234.90'),
(702, '0', 'rainer.merzbach@gmx.de', '2019-01-03 13:32:06', '198.96.155.3'),
(703, '0', 'bdjohnson0524@yahoo.com', '2019-01-03 15:03:26', '199.249.230.88'),
(704, '0', 'garyjohnlocke@gmail.com', '2019-01-03 16:22:35', '109.70.100.18'),
(705, '0', 'tnewman88@gmail.com', '2019-01-03 18:01:41', '158.174.122.218'),
(706, '0', 'baldwin.sarah20@yahoo.co.uk', '2019-01-03 22:00:01', '46.165.230.5'),
(707, '0', 'jello_jumanji@yahoo.com', '2019-01-04 00:43:58', '185.34.33.2'),
(708, '0', 'kirstencoy@gmail.com', '2019-01-04 02:43:19', '51.15.235.211'),
(709, '0', 'lynchdavid@aol.com', '2019-01-04 03:07:43', '37.220.36.240'),
(710, '0', 'bdjohnson0524@yahoo.com', '2019-01-04 07:08:13', '199.249.223.69'),
(711, '0', 'alyss2423@yahoo.com', '2019-01-04 08:05:44', '188.166.9.235'),
(712, '0', 'm.style8@gmail.com', '2019-01-04 10:12:28', '185.220.101.27'),
(713, '0', 'amybshore@gmail.com', '2019-01-04 17:18:58', '185.100.87.206'),
(714, '0', 'kursedkyuubi@gmail.com', '2019-01-04 22:02:38', '163.172.215.253'),
(715, '0', 'andynconnierichey@yahoo.com', '2019-01-04 22:48:07', '185.100.85.101'),
(716, '0', 'baileycarrvoice@gmail.com', '2019-01-05 01:11:26', '185.10.68.91'),
(717, '0', 'onewomancan83@gmail.com', '2019-01-05 01:19:33', '185.220.101.46'),
(718, '0', 'iralerankins@yahoo.com', '2019-01-05 01:24:12', '37.128.222.30'),
(719, '0', 'rolandclaire44@gmail.com', '2019-01-05 05:02:38', '51.15.113.84'),
(720, '0', 'trovescott@gmail.com', '2019-01-05 05:16:34', '199.249.230.83'),
(721, '0', 'rolandclaire44@gmail.com', '2019-01-05 08:59:49', '199.249.230.73'),
(722, '0', 'j4217@aol.com', '2019-01-05 12:51:03', '212.32.255.198');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `hint` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `htmlID` varchar(255) DEFAULT NULL,
  `htmlClass` varchar(255) DEFAULT NULL,
  `target` varchar(20) DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_menus_parentId` (`parentId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Tablo döküm verisi `menus`
--

INSERT INTO `menus` (`id`, `parentId`, `name`, `title`, `hint`, `link`, `htmlID`, `htmlClass`, `target`, `order`, `language`) VALUES
(1, NULL, 'main', 'Ana Menü', NULL, NULL, NULL, NULL, NULL, 0, 'tr'),
(2, NULL, 'footer', 'Footer Menü', NULL, NULL, NULL, NULL, NULL, 0, 'tr'),
(4, 1, NULL, 'İLETİŞİM', 'İLETİŞİM', '@contact', '', '', '_self', 8, 'tr'),
(7, 1, NULL, 'KURUMSAL', 'KURUMSAL', '@content/kurumsal/16', '', '', '_self', 2, 'tr'),
(8, 2, NULL, 'ANA SAYFA', 'Anasayfa', '@home', '', '', '_self', 1, 'tr'),
(9, 2, NULL, 'KURUMSAL', 'KURUMSAL', '@content/kurumsal/16', '', '', '_self', 2, 'tr'),
(11, 2, NULL, 'HİZMETLERİMİZ', 'Hizmetler', '@service', '', '', '_self', 4, 'tr'),
(12, 2, NULL, 'İLETİŞİM', 'İletişim', '@contact', '', '', '_self', 6, 'tr'),
(18, 1, NULL, 'İK', 'İnsan Kaynakları', '@cv', '', '', '_self', 7, 'tr'),
(22, 2, NULL, 'İNSAN KAYNAKLARI', 'İnsan Kaynakları', '@cv', '', '', '_self', 7, 'tr'),
(34, 1, NULL, 'YORUMLAR', 'Yorumlar', '@comment', '', '', '_self', 3, 'tr'),
(36, 1, NULL, 'GALERİ', 'GALERİ', '@gallery/sizden-gelenler/4', '', '', '_self', 5, 'tr'),
(37, 1, NULL, 'HABERLER', 'HABERLER', '@news', '', '', '_self', 6, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `table` varchar(255) NOT NULL,
  `modified` int(10) unsigned NOT NULL,
  `permissions` text NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `menuPattern` text,
  `controller` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Tablo döküm verisi `modules`
--

INSERT INTO `modules` (`id`, `name`, `title`, `table`, `modified`, `permissions`, `type`, `icon`, `menuPattern`, `controller`, `order`) VALUES
(1, 'home', 'Home', 'admin_users', 1428906670, 'options,password,user-list,user-insert,user-update,user-delete,group-list,group-insert,group-update,group-delete', NULL, NULL, NULL, 'HomeAdminController', 0),
(2, 'module', 'Modüller', 'modules', 1453801828, 'list,update,delete,order', NULL, NULL, NULL, 'ModuleAdminController', 0),
(3, 'social', 'Sosyal Ağlar', 'socials', 1448436590, 'list,insert,update,delete', NULL, 'fa-retweet', NULL, 'SocialAdminController', 0),
(4, 'menu', 'Menü Yönetimi', 'menus', 1430400472, 'list,insert,update,delete', NULL, NULL, NULL, 'MenuAdminController', 0),
(5, 'content', 'İçerikler', 'contents', 1428906670, 'list,insert,update,delete', 'public', NULL, 'a:4:{s:5:"title";s:5:"title";s:4:"hint";s:5:"title";s:4:"link";a:2:{i:0;s:4:"slug";i:1;s:2:"id";}s:8:"language";b:1;}', 'ContentAdminController', 0),
(6, 'contact', 'İletişim', 'contacts', 1428906670, 'list,view,delete', 'public', NULL, 'a:1:{s:10:"moduleLink";b:1;}', 'ContactAdminController', 0),
(7, 'banner', 'Bannerlar', 'banners', 1471072586, 'list,insert,update,delete', NULL, NULL, NULL, 'BannerAdminController', 0),
(9, 'service', 'Hizmetler', 'services', 1471009078, 'list,insert,update,delete', 'public', NULL, 'a:5:{s:5:"title";s:5:"title";s:4:"hint";s:5:"title";s:4:"link";a:2:{i:0;s:4:"slug";i:1;s:2:"id";}s:10:"moduleLink";b:1;s:8:"language";b:1;}', 'ServiceAdminController', 0),
(10, 'callyou', 'Biz Sizi Arayalım', 'callyou', 1429795754, 'list,delete', NULL, NULL, NULL, 'CallyouAdminController', 0),
(11, 'maillist', 'E-Mail Listesi', 'maillist', 1428906670, 'list,delete', 'public', NULL, 'a:1:{s:10:"moduleLink";b:1;}', 'MaillistAdminController', 0),
(12, 'news', 'Haberler', 'news', 1464248818, 'list,insert,update,delete', 'public', NULL, 'a:5:{s:5:"title";s:5:"title";s:4:"hint";s:5:"title";s:4:"link";a:2:{i:0;s:4:"slug";i:1;s:2:"id";}s:10:"moduleLink";b:1;s:8:"language";b:1;}', 'NewsAdminController', 0),
(13, 'cv', 'İnsan Kaynakları', 'cvs', 1428906670, 'list,view,delete', 'public', NULL, 'a:1:{s:10:"moduleLink";b:1;}', 'CvAdminController', 0),
(14, 'productcategory', 'Ürün Kategorileri', 'product_categories', 1480327793, 'list,insert,update,delete', 'public', NULL, 'a:5:{s:5:"title";s:5:"title";s:4:"hint";s:5:"title";s:4:"link";a:2:{i:0;s:4:"slug";i:1;s:2:"id";}s:10:"moduleLink";b:1;s:8:"language";b:1;}', 'ProductcategoryAdminController', 0),
(15, 'product', 'Ürünler', 'products', 1480327793, 'list,insert,update,delete,image-list,image-insert,image-update,image-delete', 'public', NULL, 'a:5:{s:5:"title";s:5:"title";s:4:"hint";s:5:"title";s:4:"link";a:2:{i:0;s:4:"slug";i:1;s:2:"id";}s:10:"moduleLink";b:1;s:8:"language";b:1;}', 'ProductAdminController', 0),
(16, 'reference', 'Referanslar', 'references', 1458822416, 'list,insert,update,delete', 'public', NULL, 'a:1:{s:10:"moduleLink";b:1;}', 'ReferenceAdminController', 0),
(17, 'comment', 'Yorumlar', 'comments', 1458822416, 'list,view,delete', 'public', 'fa-comments', 'a:2:{s:10:"moduleLink";b:1;s:8:"language";b:1;}', 'CommentAdminController', 0),
(18, 'gallery', 'Galeri', 'galleries', 1458822416, 'list,insert,update,delete,image-list,image-insert,image-update,image-delete', 'public', NULL, 'a:5:{s:5:"title";s:5:"title";s:4:"hint";s:5:"title";s:4:"link";a:2:{i:0;s:4:"slug";i:1;s:2:"id";}s:10:"moduleLink";b:1;s:8:"language";b:1;}', 'GalleryAdminController', 0),
(19, 'reference', '', '', 0, '', NULL, NULL, NULL, '', 0),
(20, 'gallery', '', '', 0, '', NULL, NULL, NULL, '', 0),
(21, 'gallery', '', '', 0, '', NULL, NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `module_arguments`
--

CREATE TABLE IF NOT EXISTS `module_arguments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` longtext,
  `type` varchar(255) NOT NULL,
  `arguments` longtext NOT NULL,
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_arguments_module` (`module`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Tablo döküm verisi `module_arguments`
--

INSERT INTO `module_arguments` (`id`, `module`, `name`, `title`, `value`, `type`, `arguments`, `language`) VALUES
(1, 'home', 'file', 'E-Katalog', 'e3bf42048add1c3178e1c8d913cbed81.rar', 'file', '[]', 'tr'),
(3, 'home', 'aboutUs', 'Hakkında Yazısı', '<h2>Kuru Yemiş Sitesi</h2><br> Yıllarının getirdiği tecrübeye dayanarak İzmir''in üzerinde bir güneş gibi doğuyor. Yeni yaşam alanlarının mimarı <strong>Web Site Satışı</strong><br> bilgi, tecrübe ve sorumluluk bilinci ile  modern çizgileriyle faaliyetlerine devam ediyor.', 'textarea', '[]', 'tr'),
(6, 'home', 'phone', 'Telefon Numarası', '000000000', 'text', '[]', 'tr'),
(7, 'contact', 'title', 'Sayfa Başlığı', 'İletişim', 'text', '{"required":true}', 'tr'),
(8, 'contact', 'metaTitle', 'Meta Başlığı', 'İletişim', 'text', '[]', 'tr'),
(9, 'contact', 'metaDescription', 'Meta Tanımı', '', 'textarea', '[]', 'tr'),
(10, 'contact', 'metaKeywords', 'Meta Anahtar Kelimeleri', '', 'textarea', '[]', 'tr'),
(11, 'contact', 'notification', 'Bildirim Gönderimi', '0', 'dropdown', '{"required":true,"options":["Bildirim G\\u00f6nderme","Bilgirim G\\u00f6nder"]}', 'tr'),
(12, 'contact', 'notificationMail', 'Bildirim Maili', '', 'text', '[]', 'tr'),
(13, 'contact', 'googleMap', 'Google Map Kordinatları', '41.0269303,28.8350677,15', 'text', '[]', 'tr'),
(14, 'contact', 'googleMapText', 'Google Map Yazısı', 'BURSA STOR YIKAMA DOKTORU', 'text', '[]', 'tr'),
(15, 'contact', 'detail', 'İletişim Bilgileri', '<p><b>BURSA STOR YIKAMA DOKTORU</b></p>\r\n\r\n<p><span style="line-height: 1.42857;">Tel :&nbsp;</span>05308915130</p>\r\n\r\n<p>E-Posta : info@konak16.com</p>\r\n\r\n<p>Hocaalizade mah Beğendi sokak No:1/A&nbsp;&nbsp;OSMANGAZİ / BURSA</p>\r\n', 'editor', '{"required":true}', 'tr'),
(20, 'service', 'title', 'Sayfa Başlığı', 'Hizmetlerimiz', 'text', '{"required":true}', 'tr'),
(21, 'service', 'metaTitle', 'Meta Başlığı', 'Hizmetlerimiz', 'text', '[]', 'tr'),
(22, 'service', 'metaDescription', 'Meta Tanımı', '', 'textarea', '[]', 'tr'),
(23, 'service', 'metaKeywords', 'Meta Anahtar Kelimeleri', '', 'textarea', '[]', 'tr'),
(24, 'callyou', 'notification', 'Bildirim Gönderimi', '0', 'dropdown', '{"required":true,"options":["Bildirim G\\u00f6nderme","Bilgirim G\\u00f6nder"]}', 'tr'),
(25, 'callyou', 'notificationMail', 'Bildirim Maili', 'info@proteksaglik.com', 'text', '[]', 'tr'),
(26, 'contact', 'address', 'Adres', 'BURSA STOR YIKAMA DOKTORU', 'text', '[]', 'tr'),
(27, 'contact', 'phone', 'Telefon Numarası', '053089151 30   /  02242624130', 'text', '[]', 'tr'),
(28, 'contact', 'mail', 'Email Adresi', 'info@bursahaliyikama.info', 'text', '[]', 'tr'),
(29, 'news', 'title', 'Sayfa Başlığı', NULL, 'text', '{"required":true}', 'tr'),
(30, 'news', 'metaTitle', 'Meta Başlığı', NULL, 'text', '[]', 'tr'),
(31, 'news', 'metaDescription', 'Meta Tanımı', NULL, 'textarea', '[]', 'tr'),
(32, 'news', 'metaKeywords', 'Meta Anahtar Kelimeleri', NULL, 'textarea', '[]', 'tr'),
(33, 'cv', 'title', 'Sayfa Başlığı', 'İnsan Kaynakları', 'text', '{"required":true}', 'tr'),
(34, 'cv', 'metaTitle', 'Meta Başlığı', 'İnsan Kaynakları', 'text', '[]', 'tr'),
(35, 'cv', 'metaDescription', 'Meta Tanımı', 'İnsan Kaynakları', 'textarea', '[]', 'tr'),
(36, 'cv', 'metaKeywords', 'Meta Anahtar Kelimeleri', '', 'textarea', '[]', 'tr'),
(37, 'cv', 'notification', 'Bildirim Gönderimi', '0', 'dropdown', '{"required":true,"options":["Bildirim G\\u00f6nderme","Bilgirim G\\u00f6nder"]}', 'tr'),
(38, 'cv', 'notificationMail', 'Bildirim Maili', '', 'text', '[]', 'tr'),
(39, 'cv', 'detail', 'İnsan Kaynakları Yazısı', '<p><b>Konak16</b>, her t&uuml;rl&uuml; lezzeti&nbsp;ve damak tadına uygun kahveleriyle, lezzetin tadına varıcak m&uuml;şterilerimize, g&uuml;ler y&uuml;z&uuml; eksik olmayan deneyimli iş arkadaşlarımızı bekliyoruz&hellip;</p>\r\n', 'editor', '{"required":true}', 'tr'),
(40, 'productcategory', 'title', 'Sayfa Başlığı', NULL, 'text', '{"required":true}', 'tr'),
(41, 'productcategory', 'metaTitle', 'Meta Başlığı', NULL, 'text', '[]', 'tr'),
(42, 'productcategory', 'metaDescription', 'Meta Tanımı', NULL, 'textarea', '[]', 'tr'),
(43, 'productcategory', 'metaKeywords', 'Meta Anahtar Kelimeleri', NULL, 'textarea', '[]', 'tr'),
(44, 'product', 'title', 'Sayfa Başlığı', NULL, 'text', '{"required":true}', 'tr'),
(45, 'product', 'metaTitle', 'Meta Başlığı', NULL, 'text', '[]', 'tr'),
(46, 'product', 'metaDescription', 'Meta Tanımı', NULL, 'textarea', '[]', 'tr'),
(47, 'product', 'metaKeywords', 'Meta Anahtar Kelimeleri', NULL, 'textarea', '[]', 'tr'),
(48, 'reference', 'title', 'Sayfa Başlığı', NULL, 'text', '{"required":true}', 'tr'),
(49, 'reference', 'metaTitle', 'Meta Başlığı', NULL, 'text', '[]', 'tr'),
(50, 'reference', 'metaDescription', 'Meta Tanımı', NULL, 'textarea', '[]', 'tr'),
(51, 'reference', 'metaKeywords', 'Meta Anahtar Kelimeleri', NULL, 'textarea', '[]', 'tr'),
(52, 'comment', 'title', 'Sayfa Başlığı', 'Müşterilerimizin yorumları her zaman için değerlidir.', 'text', '{"required":true}', 'tr'),
(53, 'comment', 'metaTitle', 'Meta Başlığı', '', 'text', '[]', 'tr'),
(54, 'comment', 'metaDescription', 'Meta Tanımı', '', 'textarea', '[]', 'tr'),
(55, 'comment', 'metaKeywords', 'Meta Anahtar Kelimeleri', '', 'textarea', '[]', 'tr'),
(56, 'contact', 'notification', 'Bildirim Gönderimi', '0', 'dropdown', '{"required":true,"options":["Bildirim G\\u00f6nderme","Bilgirim G\\u00f6nder"]}', 'tr'),
(57, 'contact', 'notificationMail', 'Bildirim Maili', '', 'text', '[]', 'tr'),
(58, 'gallery', 'title', 'Sayfa Başlığı', NULL, 'text', '{"required":true}', 'tr'),
(59, 'gallery', 'metaTitle', 'Meta Başlığı', NULL, 'text', '[]', 'tr'),
(60, 'gallery', 'metaDescription', 'Meta Tanımı', NULL, 'textarea', '[]', 'tr'),
(61, 'gallery', 'metaKeywords', 'Meta Anahtar Kelimeleri', NULL, 'textarea', '[]', 'tr'),
(62, 'reference', 'title', 'Sayfa Başlığı', NULL, 'text', '{"required":true}', 'tr'),
(63, 'reference', 'metaTitle', 'Meta Başlığı', NULL, 'text', '[]', 'tr'),
(64, 'reference', 'metaDescription', 'Meta Tanımı', NULL, 'textarea', '[]', 'tr'),
(65, 'reference', 'metaKeywords', 'Meta Anahtar Kelimeleri', NULL, 'textarea', '[]', 'tr'),
(66, 'gallery', 'title', 'Sayfa Başlığı', NULL, 'text', '{"required":true}', 'tr'),
(67, 'gallery', 'metaTitle', 'Meta Başlığı', NULL, 'text', '[]', 'tr'),
(68, 'gallery', 'metaDescription', 'Meta Tanımı', NULL, 'textarea', '[]', 'tr'),
(69, 'gallery', 'metaKeywords', 'Meta Anahtar Kelimeleri', NULL, 'textarea', '[]', 'tr'),
(70, 'gallery', 'title', 'Sayfa Başlığı', NULL, 'text', '{"required":true}', 'tr'),
(71, 'gallery', 'metaTitle', 'Meta Başlığı', NULL, 'text', '[]', 'tr'),
(72, 'gallery', 'metaDescription', 'Meta Tanımı', NULL, 'textarea', '[]', 'tr'),
(73, 'gallery', 'metaKeywords', 'Meta Anahtar Kelimeleri', NULL, 'textarea', '[]', 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` text,
  `metaKeywords` text,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `summary`, `detail`, `image`, `date`, `metaTitle`, `metaDescription`, `metaKeywords`, `order`, `language`) VALUES
(5, 'Stor Perde Yıkama Doktoru ', 'stor-perde-yikama-doktoru-bursalilarin-hizmetindedir', 'Stor Perde Yıkama Doktoru Bursalıların Hizmetindedir.', '<p>Stor Perde Yıkama Doktoru Bursalıların Hizmetindedir.</p>\r\n', '84a7f22be13f860572f63a9609bcb1ef.jpg', '2018-10-02', '', '', '', 1, 'tr'),
(6, 'Stor Perde Yıkama Yöntemleri', 'stor-perde-yikama-yontemleri', 'Ultrasonik stor perde yıkama makinası genellikle büyük stor perde yıkama firmalarında ve fabrikalarda bulunmaktadır. ', '<p>Tam anlamıyla profesyonel bir şekilde perde yıkamanın yapılabileceği yerlerdir. Biz Doğa Stor Perde yıkama firması olarak kendi makine parkurumuzda ultrasonik stor perde yıkama makineleri yer almaktadır. Burada stor perdeleriniz g&ouml;n&uuml;l rahatlığıyla yıkanmakta ve daha &ouml;nceden de bahsetmiş olduğumuz gibi &ouml;zel kurutma odalarında kurtulmakta paketlenerek yeni bir şekilde evinize veya adresinize teslim edilmektedir. Stor perde yıkama y&ouml;ntemleri her firma kendine g&ouml;re &ccedil;eşitli bir y&ouml;ntem &uuml;retmekte olmuş olsa da bile yine de klasik y&ouml;ntem olan elde stor perde yıkama ve stor perde yıkama makinasında perde yıkama en &ouml;nemli y&ouml;ntemlerden biridir. İnsanlarımız, G&uuml;n ge&ccedil;tik&ccedil;e kendilerini daha bir otomasyon hale getirmektedirler. Teknolojinin gelişmesiyle birlikte her sekt&ouml;rde olduğu gibi bu stor perde yıkama sekt&ouml;r&uuml;ne de yansımış bulunmaktadır. &Ouml;zellikle stor perde yıkama konusunda son g&uuml;nlerde en &ccedil;ok tercih edilen y&ouml;ntem ultrasonik makineler stor perde yıkama y&ouml;ntemidir.</p>\r\n', '339a7955de96b8a222a0db9aacc48831.jpg', '2018-10-04', '', '', '', 2, 'tr'),
(8, 'Koltuk Yıkama Doktoru', 'koltuk-yikama-doktoru', 'Koltuk yıkama hizmetlerimiz de de tam hız çalışmaya devam eden Doğa Koltuk Yıkama Firmamız Bursa genelinde koltuk yıkama hizmetlerinde de başarılı bir kariyere sahiptir. ', '<p>Koltuk yıkama hizmetlerimiz de de tam hız &ccedil;alışmaya devam eden Doğa Koltuk Yıkama Firmamız Bursa genelinde koltuk yıkama hizmetlerinde de başarılı bir kariyere sahiptir. M&uuml;şteri memnuniyeti odaklı &ccedil;alışmalarımız koltuk yıkama sekt&ouml;r&uuml;nde de başarıya ulaşmış k&ouml;kl&uuml; bir ge&ccedil;mişe sahiptir. İstanbul gibi b&uuml;y&uuml;k bir mega kentte iddialı olun bu sekt&ouml;r kaliteli bir temizlik ve maksimum hizmet veremediğiniz s&uuml;rece koltuk yıkama veya diğer hizmetlerde de başarılı bir yer elde etmeniz m&uuml;mk&uuml;n değildir. Bu y&uuml;zden kendi &ccedil;alışma alanında koltuk yıkama adına en iyi bir şekilde hizmet &ccedil;abası g&ouml;stermeniz gerekiyor. Koltuklarınız kirlenmiş ise bunları d&uuml;zenli bir şekilde yıkatmalı veya temizletmelisiniz. Aksi taktirde sağlık ve konfor a&ccedil;ısından &ccedil;ok şey kaybedeceğiniz kesindir. Biz İstanbul koltuk yıkama firması olarak bu hizmeti sizlere sunuyoruz. İstanbul koltuk yıkama fiyatları belirli bir seviyede s&uuml;rse bile yine İstanbul genelinde en kaliteli ve en uygun fiyatlarda koltuk yıkama firması bizim firmadır. Bunları biz s&ouml;ylemiyoruz. Verdiğimiz hizmet neticesinde memnun kalan m&uuml;şterilerimizin biz ati kendileri s&ouml;ylemektedir. Biz koltuk yıkama adına en iyisini yapıyoruz. M&uuml;şterilerimizin taktiri bunun en g&uuml;zel kanıtıdır.</p>\r\n', '46911bb176df3587619a0e5ef30c921f.jpg', '2018-10-06', '', '', '', 4, 'tr'),
(9, 'Koltuk Yıkama Nasıl Yapılır', 'koltuk-yikama-nasil-yapilir', 'Koltuk yıkama zamanı geldiğinde eğer kendi evinizde koltuk yıkayacaksanız bunu oturup iki kere düşünmeniz gerekecektir.', '<p>Koltuk yıkama zamanı geldiğinde eğer kendi evinizde koltuk yıkayacaksanız bunu oturup iki kere d&uuml;ş&uuml;nmeniz gerekecektir. Nedeni ise koltuk yıkama &ouml;yle zannedildiği gibi kolay bir hizmet olmadığı gibi her insanın yapabileceği bir hizmette değildir. Koltuk yıkama i&ccedil;in ilk &ouml;nce gerekli şey sabırdır. &Ccedil;&uuml;nk&uuml; sabretmediğiniz taktirde bu her işte olduğu gibi koltuk yıkama hizmetlerinde de yapacağınız işin kalitesi d&uuml;şecek ve artık m&uuml;şteri sizi ikinci plana atacaktır. İstanbul koltuk yıkama firmaları gibi gelişmiş bir firma ne bu sekt&ouml;rde nede temizlik sekt&ouml;r&uuml;nde yoktur. Koltuk yıkama evde de yapılabilir ama işin uzmanı gibi o koltuklara bağımlı kalmayıp m&uuml;şteri adreslerine g&ouml;re hareket ediyorsunuz. Koltuk yıkama &ouml;ncesi koltukların iyi bir şekilde yıkanabilmesi i&ccedil;in bir &ouml;n araştırma yaparak kimler nereye koltuk yıkatıyor. Bu koltuk yıkama i&ccedil;in bak bir s&uuml;r&uuml; işim var gibi s&ouml;ylemlerle her g&uuml;n iteleyen bir anlayış var. Nasıl yapılır? &Ouml;nce koltuklar ıslanır daha sonra koltukları sağlam bir fır&ccedil;a yardımı fır&ccedil;alanır. Yıkama sırasında kullanacağınız koltuk yıkama şampuanı ve koltuk yıkama makinası birlikte hareket edecekleri pozisyona d&uuml;şerseniz o zaman işin hakkından gelemezsiniz. Biz bu konuda olduk&ccedil;a &ccedil;ok iddialıyız. İstanbul koltuk yıkama hizmeti veren firmalar i&ccedil;erisinden yapılan bu &ccedil;alışama kapsamında ne dereceli bir sekt&ouml;r i&ccedil;erisinde &ccedil;alıştığımızı kanıtlayarak m&uuml;şteri odaklı &ccedil;alışmalar devam etmektedir.</p>\r\n', 'c4796621622960525665a2a7ebfb09e7.jpg', '2018-10-06', '', '', '', 5, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` longtext,
  `type` varchar(255) NOT NULL,
  `arguments` longtext NOT NULL,
  `language` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Tablo döküm verisi `options`
--

INSERT INTO `options` (`id`, `name`, `title`, `value`, `type`, `arguments`, `language`) VALUES
(1, 'metaTitle', 'Site Başlığı', 'Bursa Stor Perde Yıkama Merkezi', 'text', '{"required":true}', 'tr'),
(2, 'metaDescription', 'Site Tanımı', 'Bursa Stor Perde Yıkama Merkezi', 'textarea', '{"required":true}', 'tr'),
(3, 'metaKeywords', 'Site Anahtar Kelimeleri', 'Bursa Stor Perde Yıkama Merkezi', 'textarea', '{"required":true}', 'tr'),
(4, 'customMeta', 'Özel Metalar', '', 'textarea', '[]', 'tr'),
(5, 'smtpHost', 'Smtp Sunucusu', '', 'text', '[]', 'tr'),
(6, 'smtpPort', 'Smtp Port', '587', 'text', '[]', 'tr'),
(7, 'smtpUser', 'Smtp Kullanıcı Adı', '', 'text', '[]', 'tr'),
(8, 'smtpPass', 'Smtp Parola', '', 'text', '[]', 'tr'),
(9, 'footerText', 'Footer Kısa Yazı', '<h2>Bursam Stor Perde </h2><br>  Yıkama Merkezi', 'textarea', '[]', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoryId` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` text,
  `metaKeywords` text,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_categories`
--

CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `detail` longtext,
  `image` varchar(255) NOT NULL,
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` text,
  `metaKeywords` text,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_images`
--

CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productId` int(10) unsigned NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `product_images`
--

INSERT INTO `product_images` (`id`, `productId`, `image`, `order`, `language`) VALUES
(1, 1, '63551be967c7a821695c5aca3c96e103.jpg', 1, 'tr'),
(2, 2, '9153296d28f5d15a724ca8b25e1f7712.jpg', 1, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `room` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `summary` text NOT NULL,
  `map` varchar(255) DEFAULT NULL,
  `detail` longtext,
  `projectDetail` longtext,
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` text,
  `metaKeywords` text,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `project_images`
--

CREATE TABLE IF NOT EXISTS `project_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `galleryId` int(10) unsigned NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=169 ;

--
-- Tablo döküm verisi `project_images`
--

INSERT INTO `project_images` (`id`, `galleryId`, `image`, `order`, `language`) VALUES
(17, 6, '4a8453f63cce37e66f7589169cae0bb5.png', 1, 'tr'),
(18, 6, '37b83ddee5f51480e5814a6ecff4a132.png', 2, 'tr'),
(19, 6, 'eb03aad921578c4a8743c332253ab3c0.png', 3, 'tr'),
(20, 6, 'bad47ccd8804410cf9803eb528a76b2e.png', 4, 'tr'),
(21, 6, 'b55a0e5970a8c4e32eb641b1462e82d7.png', 5, 'tr'),
(22, 6, 'a64374fd9a3fe26e0fdacbef02f717c6.png', 6, 'tr'),
(23, 6, '6e0aebf03a87f7ba412a15b607631f0f.png', 7, 'tr'),
(24, 6, 'fc1130a300613f40b206c1691c3fbe55.png', 8, 'tr'),
(25, 6, 'a4e2445738680235ec00b5d4e9c24bcb.png', 9, 'tr'),
(26, 6, 'e8c40d0467b07ee0f23d3fd32759d8ce.png', 10, 'tr'),
(27, 5, '49f5c4e3be019dd40ec581e8aaa8217a.png', 1, 'tr'),
(28, 5, '30678a3959f6cc936f662143eed00890.png', 2, 'tr'),
(29, 5, '2e8dd713cb3ff1b6429f945d592a0beb.png', 3, 'tr'),
(30, 5, 'acb51a9082d43e672048f0da5d487434.png', 4, 'tr'),
(31, 5, '73af26673932b313f67ec57b48b733a0.png', 5, 'tr'),
(32, 5, 'a81e7475045958ec8e02c4a543545fc0.png', 6, 'tr'),
(33, 4, '2eb342253e815628253a4085496fd46b.png', 1, 'tr'),
(34, 4, '3aa83b5edc797c4a7e0f76adbf9b52cd.png', 2, 'tr'),
(35, 4, '38f7f22084184993d00a2981c5b164d5.png', 3, 'tr'),
(36, 4, '639cb681e9a4e5fbfdcd74076aa20437.png', 4, 'tr'),
(37, 4, 'eec13f35517f022848bd55fc7f9fa507.png', 5, 'tr'),
(38, 4, '237d200d05d8463de5fa1d826d5c63fb.png', 6, 'tr'),
(39, 4, 'fa8e8b5076ca98ed35a465bfeae3fa54.png', 7, 'tr'),
(40, 4, '14f94307b1dc9fce2c70b22ad0dcbecb.png', 8, 'tr'),
(41, 1, '94b8f6fc98f0bf698a98202e8a3a0a71.JPG', 1, 'tr'),
(42, 1, '05dc63b51b898b70289ea7aa8859d321.JPG', 2, 'tr'),
(44, 1, '8a3c980e2fe834c991ef5f6f6c691ed5.JPG', 4, 'tr'),
(45, 1, '217a2c5e17fed4b20ae492a39015160c.JPG', 5, 'tr'),
(46, 1, '13f372ea3030124af8540da1a73df82f.JPG', 6, 'tr'),
(47, 1, 'd8921e995117c12b9837ef494600ecba.JPG', 7, 'tr'),
(48, 1, '642dc98ae4fa21bb9ca52d6d98a5f247.JPG', 8, 'tr'),
(49, 1, 'caa449314debc76f9260507a361a49f9.JPG', 9, 'tr'),
(51, 1, 'c691e193a0ace0d6999319ec781db25d.JPG', 11, 'tr'),
(53, 1, '8cc9129d9b89a903f639a1d41043bd19.JPG', 13, 'tr'),
(54, 1, '6b5120724cd7e1956c0f676ee7e85169.JPG', 14, 'tr'),
(55, 1, 'b2be8e5dcde36f06e21839bb6f149706.JPG', 15, 'tr'),
(56, 1, '06748c496088b0bb4a7a4452c7593236.JPG', 16, 'tr'),
(57, 1, 'e97bf43a28383ae9c6bba5915329b804.JPG', 17, 'tr'),
(58, 1, '89fb526fdf8c6afa3ab38dd07196327e.JPG', 18, 'tr'),
(59, 1, '23d22fa00279db21de0f22d541800254.JPG', 19, 'tr'),
(61, 1, 'b149323c6a169fee895a9d4e0d9e5699.JPG', 21, 'tr'),
(62, 1, '2f64751901f5160c9612508984f2c0a1.JPG', 22, 'tr'),
(63, 1, 'a9db85fbe6fb59474ae04ddb71415746.JPG', 23, 'tr'),
(64, 1, 'a46b6c812e4b5da3b8e426ce94614823.JPG', 24, 'tr'),
(65, 1, 'b5b7dc7b7b3538561ba47afa2978b35c.JPG', 25, 'tr'),
(67, 1, '4fed9cd082569fd86d128b57ae25405f.JPG', 27, 'tr'),
(69, 1, '5118242a2c1bd03dd2c5c3c77d161456.JPG', 29, 'tr'),
(70, 1, 'f00758a03be3c8a1c4f1f0c00f797856.JPG', 30, 'tr'),
(71, 1, '3967bebd7fdb14c14abcfbe2746b6379.JPG', 31, 'tr'),
(72, 1, '81977f73410901fcd1764b5ed1e286f1.JPG', 32, 'tr'),
(73, 1, '543e60fa794ca508326073a18da78b6b.JPG', 33, 'tr'),
(74, 1, '0440f7e91c82ffd446432114e9096a4f.JPG', 34, 'tr'),
(76, 1, 'e06431480c651677cd468aac6231197b.JPG', 36, 'tr'),
(77, 1, '66edbace89a29eb54b2250b3f609f8e3.JPG', 37, 'tr'),
(78, 1, '23f0539c7f3beb924152aeb5627653f1.JPG', 38, 'tr'),
(80, 1, '52768d6577a563370231fa2c95cb7d5d.JPG', 40, 'tr'),
(81, 1, '4f81c4be871963a610a70662c0d5a668.JPG', 41, 'tr'),
(85, 1, '6a89e5767ae41c18f8532d93725d05d0.JPG', 45, 'tr'),
(87, 1, 'dbe18923766692f71a58680eeebd3af6.JPG', 47, 'tr'),
(88, 1, 'c5a6931c404894f921929a88e1bae0e7.JPG', 48, 'tr'),
(89, 1, '966695839e99b31a43932b4a7e77ef69.JPG', 49, 'tr'),
(90, 1, '0f047e981049376af86354da63b817cb.JPG', 50, 'tr'),
(91, 1, 'c035329c149a90757fb8b7cce904f7d4.JPG', 51, 'tr'),
(93, 1, 'cb70bca1a484fba64aa1e02c4f543564.JPG', 53, 'tr'),
(94, 1, '346416fd99d0848b245e3d4e9c587a81.JPG', 54, 'tr'),
(98, 1, '5f51bac20ae33fcb4b062a57f0925feb.JPG', 58, 'tr'),
(99, 1, '8972abcf8de6e3a953396c64507c9f5b.JPG', 59, 'tr'),
(100, 1, '53c493c9e4d7680a66abe06224720080.JPG', 60, 'tr'),
(101, 1, '249d5e5e04885d55fad5362a2fe2b42d.JPG', 61, 'tr'),
(102, 1, '20fbd8797c648f5828b838504b1c66eb.JPG', 62, 'tr'),
(103, 1, '1f03518b34f588416d41c4a17759200e.JPG', 63, 'tr'),
(104, 1, '4c964e10333a30e90eb6c23b0ef4ca8a.JPG', 64, 'tr'),
(105, 1, '36394ee7da25103e89101f472888cdb4.JPG', 65, 'tr'),
(106, 1, '04b4a138d9b4b298349c3e0629c3ec93.JPG', 66, 'tr'),
(107, 1, '0218bf607be1b222ff5ac88abf44b021.JPG', 67, 'tr'),
(108, 1, '94d2e8fb535b7a8d97d84d9167769b72.JPG', 68, 'tr'),
(109, 1, '2611c68f4a7ba5491ec0e1244321bbb4.JPG', 69, 'tr'),
(110, 1, 'b4badd2f9ad9d01c26d0db431f33bfb7.JPG', 70, 'tr'),
(111, 1, '093cac2dca4f0496ff2ad865128a0ce7.JPG', 71, 'tr'),
(115, 1, '89ea9b02dbd58cc1137436304ca5d0eb.JPG', 75, 'tr'),
(116, 1, 'bcd083d3f271a74606b3e4cbe862aaef.JPG', 76, 'tr'),
(117, 1, '2803fca148abf8692aa34960cff66a32.JPG', 77, 'tr'),
(118, 1, '3c43422fd0380db3d784e890cb04af03.JPG', 78, 'tr'),
(120, 1, 'becab6340b599ae0c3bafef343cc8903.JPG', 80, 'tr'),
(122, 1, 'ecf99e29db4140ee337ab779910e8477.JPG', 82, 'tr'),
(123, 1, 'b3188edc908628c6005604497d3043b2.JPG', 83, 'tr'),
(124, 1, '84dcc9448acc690e00f1a3fa08a90d5a.JPG', 84, 'tr'),
(126, 1, 'b097a8b98bd4ec1d309e51d554240145.JPG', 86, 'tr'),
(127, 1, '3b590db271efc764563a08e1af0bd9d4.JPG', 87, 'tr'),
(128, 1, '0439026a8940eecc15778cf6656a874a.JPG', 88, 'tr'),
(129, 1, 'd5fbb76bf916f6524a33217044b9d14f.JPG', 89, 'tr'),
(131, 1, '302bab00b2ad9125c611b87dde0ba7f7.JPG', 91, 'tr'),
(132, 1, '2fd7f8252f59b6b1a365cf3e3a611641.JPG', 92, 'tr'),
(133, 1, '3db4a51425aa07eaff98a3b621dd8da7.JPG', 93, 'tr'),
(134, 1, '6be934c2009221e5ef093668e2b3ecc2.JPG', 94, 'tr'),
(135, 1, 'ff930356c0bc6af7738519050eda573c.JPG', 95, 'tr'),
(136, 1, '796189a8287c238943a2681e8ecd8ea3.JPG', 96, 'tr'),
(138, 1, 'b740aa5d9ad3ffcb69762c6cd93081be.JPG', 98, 'tr'),
(139, 1, '94fab0bdb5a93165aa4ad0d410b883d5.JPG', 99, 'tr'),
(142, 7, '1e46cc94984b9a6e330926fa47476fa3.jpg', 1, 'tr'),
(143, 7, '2861766c7725a667cc99f407efa51208.jpg', 2, 'tr'),
(144, 7, '87cc3d1167e45ace5fcd6dc0924ef5bf.jpg', 3, 'tr'),
(145, 7, '68d6cbe6a69edbb18289b23100849141.jpg', 4, 'tr'),
(146, 7, '5e1c63a6ff7d52136631ec8c64f373b6.png', 5, 'tr'),
(147, 7, 'fab906053b3e843e66d713295c9bd4d4.png', 6, 'tr'),
(148, 7, 'd216690ec528dc5e390c325d1b9055dd.png', 7, 'tr'),
(149, 7, 'd4a9cc63e0d9320cd898bddf0ded293f.png', 8, 'tr'),
(150, 7, 'b9ae4302d2b23b874fc6035ad425812b.png', 9, 'tr'),
(151, 7, 'd142854069def389d1003aba81b91676.png', 10, 'tr'),
(152, 7, '08a478c555a6e32ffeae5d8b1b35fc24.jpg', 11, 'tr'),
(153, 2, '9669ed99ca2e1564763aeb026d17b0c8.jpg', 1, 'tr'),
(155, 2, '9d79c3263bc9c99b235f94e30dfa82c9.jpg', 3, 'tr'),
(157, 2, 'bd6f914e6c9d1ffd11eab0636263410d.jpg', 5, 'tr'),
(159, 2, 'f23e9d40ed38f51fb5ce408c2e4498af.jpg', 7, 'tr'),
(160, 2, '9e5280b44c88cd61b4c4105de72f7414.jpg', 8, 'tr'),
(161, 2, '6a507cdab7e96ac8d9596f15d5d074b9.jpg', 9, 'tr'),
(162, 2, 'ff943ac508e0e6b3a617c5720ee4be89.jpg', 10, 'tr'),
(163, 3, 'b6ee827bc60676af6e0f0ce9736b53f5.png', 1, 'tr'),
(164, 3, 'e15f06631cf5280587d86a16e19b1ff9.png', 2, 'tr'),
(165, 3, '1f63f3eae19796848e473ed0394ab074.png', 3, 'tr'),
(166, 2, '208abd2666fd87399c5e74ddf987b871.jpg', 11, 'tr'),
(167, 2, '2c5481b6bc9f946f83ef519f3eca796e.jpg', 12, 'tr'),
(168, 2, '828846d17a4d78bff10c759d028673d0.jpg', 13, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `references`
--

CREATE TABLE IF NOT EXISTS `references` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `references`
--

INSERT INTO `references` (`id`, `title`, `image`, `order`, `language`) VALUES
(1, 'TESt', '2d7d5f869f256657d162fed18836712a.jpg', 1, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` text,
  `metaKeywords` text,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `socials`
--

CREATE TABLE IF NOT EXISTS `socials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Tablo döküm verisi `socials`
--

INSERT INTO `socials` (`id`, `title`, `link`, `image`, `icon`, `order`) VALUES
(1, 'Facebook', 'https://www.facebook.com/konak16', NULL, 'fa fa-facebook', 1),
(2, 'Twitter', '#', NULL, 'fa fa-twitter', 3),
(3, 'Instagram', '#', 'b346e243a2a725df832e932a6d958670.jpg', 'fa fa-instagram', 2);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `admin_perms`
--
ALTER TABLE `admin_perms`
  ADD CONSTRAINT `admin_perms_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `admin_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `admin_groups` (`id`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `contents` (`id`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `module_arguments`
--
ALTER TABLE `module_arguments`
  ADD CONSTRAINT `module_arguments_ibfk_1` FOREIGN KEY (`module`) REFERENCES `modules` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
