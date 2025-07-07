-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3307
-- Üretim Zamanı: 14 May 2025, 13:32:58
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ornek`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

CREATE TABLE `dersler` (
  `DID` int(11) NOT NULL,
  `Dadi` varchar(55) NOT NULL,
  `icerik` text NOT NULL,
  `yazar` varchar(55) NOT NULL,
  `tarih` varchar(55) NOT NULL,
  `keyword` varchar(55) NOT NULL,
  `resim` varchar(155) NOT NULL,
  `kategori_link` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_turkish_ci;

--
-- Tablo döküm verisi `dersler`
--

INSERT INTO `dersler` (`DID`, `Dadi`, `icerik`, `yazar`, `tarih`, `keyword`, `resim`, `kategori_link`) VALUES
(1, 'Php Veritabanı', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor iure fugiat magnam error quo omnis quos natus ducimus doloribus consectetur quia ratione beatae expedita repellendus architecto, in dignissimos molestias fugit.', 'Fuat', '12.05.2025', 'php, web', '1.jpg', 'php'),
(2, 'Php session', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor iure fugiat magnam error quo omnis quos natus ducimus doloribus consectetur quia ratione beatae expedita repellendus architecto, in dignissimos molestias fugit.', 'Ali', '22.11.2024', 'php, wb, mobil', '1.jpg', 'php'),
(3, 'Modern Web Geliştirme', 'HTML, CSS ve JavaScript ile modern web uygulamaları geliştirme rehberi.', 'Ahmet Yılmaz', '2021-03-15', 'web, frontend, html, css, javascript', '', 'web'),
(4, 'Python ile Programlama', 'Yeni başlayanlar için Python dilini öğretici kapsamlı bir kaynak.', 'Zeynep Demir', '2020-09-10', 'python, başlangıç, yazılım, programlama', '', 'python'),
(5, 'Mobil Uygulama Geliştirme', 'Android ve iOS için mobil uygulama geliştirme temel bilgileri.', 'Mert Kaya', '2022-05-22', 'mobil, android, ios, uygulama', '', 'mobil'),
(6, 'JavaScript Derinlemesine', 'JavaScript dilinin temelinden ileri düzeye kadar detaylı incelenmesi.', 'Elif Koç', '2019-11-08', 'javascript, js, programlama, web', '', 'js'),
(7, 'Python ile Veri Bilimi', 'Veri analizi, görselleştirme ve makine öğrenmesi için Python kullanımı.', 'Kemal Arslan', '2023-01-03', 'python, veri bilimi, pandas, numpy, sklearn', '', 'python'),
(8, 'Flutter ile Mobil Geliştirme', 'Google’ın Flutter framework’ü ile uygulama geliştirme.', 'Ayşe Karaca', '2021-07-18', 'flutter, dart, mobil, çapraz platform', '', 'mobil'),
(9, 'Tam Yığın Web Geliştirme', 'Frontend ve Backend teknolojileriyle tam yığın geliştirici olma.', 'Burak Yıldız', '2022-10-12', 'full stack, node.js, react, web, backend', '', 'web'),
(10, 'JavaScript Uygulama Geliştirme', 'SPA yapıları ve modern JS framework’leri ile uygulama geliştirme.', 'Nazlı Şahin', '2023-04-05', 'javascript, react, vue, angular, spa', '', 'js');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `KID` int(11) NOT NULL,
  `Kategori` varchar(33) NOT NULL,
  `link` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`KID`, `Kategori`, `link`) VALUES
(1, 'Web Programlama', 'web'),
(2, 'Python', 'python'),
(3, 'Mobil Uygulama', 'mobil'),
(4, 'Javascript', 'js'),
(5, 'PHP', 'php');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `MID` int(11) NOT NULL,
  `Madi` varchar(15) NOT NULL,
  `Mlink` varchar(55) NOT NULL,
  `ative` int(11) NOT NULL,
  `icon` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`MID`, `Madi`, `Mlink`, `ative`, `icon`) VALUES
(1, 'Anasayfa', 'index.php', 1, ''),
(2, 'Ürünler', 'urunler.php', 1, ''),
(3, 'Hakkımızda', 'about.php', 1, ''),
(4, 'İletişim', 'iletisim.php', 0, ''),
(5, 'Deneme', 'deneme.php', 1, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `UID` int(11) NOT NULL,
  `UName` varchar(55) NOT NULL,
  `UPass` varchar(55) NOT NULL,
  `Uyetki` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`UID`, `UName`, `UPass`, `Uyetki`) VALUES
(1, 'admin', 'admin', 1),
(2, 'Zehra', '12345', 2);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `dersler`
--
ALTER TABLE `dersler`
  ADD PRIMARY KEY (`DID`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`KID`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MID`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `dersler`
--
ALTER TABLE `dersler`
  MODIFY `DID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `KID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
