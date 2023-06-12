-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Haz 2023, 22:20:10
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `yerel-isletme-rehberi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firmalar`
--

CREATE TABLE `firmalar` (
  `firma_id` int(11) NOT NULL,
  `firma_isim` varchar(80) NOT NULL,
  `firma_tel` varchar(15) NOT NULL,
  `firma_eposta` varchar(40) NOT NULL,
  `firma_adres` varchar(200) NOT NULL,
  `firma_tur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `firmalar`
--

INSERT INTO `firmalar` (`firma_id`, `firma_isim`, `firma_tel`, `firma_eposta`, `firma_adres`, `firma_tur`) VALUES
(41, 'Hotel Osaka Silivri', '+90 212 728 880', 'osakasilivri@gmail.com', 'Silviya Caddesi 50 İstanbul TR', 9),
(42, 'Garden Et Lokantası', '+90 212 723 684', 'garden_et_lokantasi@outlook.com', 'Suna Pekuysal Sokak İstanbul TR', 4),
(43, 'Çesmeli Köşk Hotel Silivri', '+90 212 729 092', 'cesmeli_kosk@gmail.com', 'Fevzi Çakmak Caddesi 10İstanbul TR', 9),
(44, ' BOTAŞ - Silivri İşletme Müdürlüğü', '+90 212 867 69 ', 'botas.silivri-im@hs01.kep.tr', 'Silivri İşletme Müdürlüğü Alipaşa Köyü, 34570 Silivri / İSTANBUL', 2),
(46, 'Silivri Hatay KATIK Döner', '(0212) 728 40 0', 'silivrikatikdoner@gmail.com', 'Piri Mehmet Paşa, Arslan Yoğurt Yanı No:24, 34570 Silivri/İstanbul', 4),
(47, 'Belkıszadem Künefe', '(0212) 727 60 6', 'yemeksepeti@hotmail.com', 'Piri Mehmet Paşa, Musa Çavuş, Silivri/İstanbul', 4),
(48, 'Silivri Dilek Pastanesi', '(0212) 727 74 7', 'dilek_pastanesi@mail.com', 'Hacı Pervane Cd. No:33/2', 4),
(49, 'Lilyana Pasta & Cafe', '0532 271 58 71', 'lilyana_pasta@lilyana.com', 'Yeni, Mustafa, Yeni Mahalle Varnalı Caddesi, Canbaz Sk.', 4),
(50, 'Vega AVM Silivri', '(0212) 728 70 1', 'silivri_Vega@vegaavm.com', 'Yeni Mahalle, General Ali İhsan Türkkan Cd. ', 8),
(51, 'Mavi - Silivri Vega AVM', '(0212) 728 70 1', 'silivrivega@mavi.com', 'Yeni, General Ali İhsan Türkkan Cd. No:30, Silivri/İstanbul', 8),
(52, 'duyBunu Bilgi Teknolojileri A.Ş.', ' 0(532) 111 333', 'bilgi@duybunu.com.tr', 'Maltepe Mah. Eski Çırpıcı Yolu Sk.  Blok No:1 İç Kapı No:604,', 12),
(53, 'Silivri Cadde Gayrimenkul', '0532 313 45 97', 'silivri_cadde_emlak@gmail.com', 'YENİ MAHALLE, 34570 Silivri/İstanbul', 3),
(54, 'Silivri Halk Eğitimi Merkezi', '0 (212) 727 25 ', 'silivrihem@meb.k12.tr', 'Yeni Mahalle Silivri / Gazitepe Caddesi No.88 Kat.3 Silivri / İstanbul', 1),
(55, 'Silivri Saray Evleri', '(0212) 728 05 3', 'silivri-sarayev@hotmail.com', 'Fatih Mahallesi Bağlar Sok. No:2, 34586', 5),
(56, 'Eser Otomotiv Silivri', '(0212) 728 64 5', 'eser_otomativ2011@gmail.com', 'Piri Mehmet Paşa, Eser Otomotiv, No:16, 34570 Silivri/İstanbul', 7),
(57, 'Çağrı Auto Silivri', '0538 982 27 66', 'cagriotomativ2004@gmail.com', 'Ali bey mah, ecem apt, No:82 B, 34580 Silivri/İstanbul', 7),
(58, 'ÖZKUM MADENCİLİK', '0212 542 83 21', 'ozkummadencilik@outlook.com', 'Büyük Kılıçlı Mh. Lâiklik Cd. No:380 (Silivri - Sinekli Yolu 17. km)', 6),
(59, 'Zamran Software Web Tasarım Hizmetler', '0532 282 94 86', 'info@zamran.com', 'Cihangir mah. Hamza No35 D2, 34310 Avcılar/İstanbul', 12),
(60, 'Exodus Yazılım', '0542 573 26 21', 'info@exodus.com', 'Yeni Mah Silivri/İSTANBUL No:17, 34570 Silivri/İstanbul', 12),
(61, 'Birgul Asansorlu Nakliyat', '+90 212 880 44 ', 'info@birgulasansorlunakliyat.com', 'Büyükşehir Mah., Başak Sok.No:48, 34520,  Beylikdüzü / İST.', 11),
(62, 'Mertcan Pansiyon', '0212 731 53 55', 'info@mertcanpansiyon.com', 'Selimpaşa Mah, Halaskargazi Cd. Silivri/İstanbul', 10),
(63, 'SİLİVRİ SÜRÜCÜ KURSU', '0532 597 42 92', 'info@silivrisurucukursu.com', 'Piri Mehmet Paşa, Başkomutan Cd No:15 Kat:1, 34570 Silivri/İstanbul', 1),
(64, 'Saral İnşaat', '(212) 736 1818', 'info@saral.com', 'Mimar Sinan Mah. Sunflower Evleri, 34570 Silivri /İstanbul', 5),
(65, 'Enerji Kimlik Belgesi Silivri Ofisi', ' (0212) 909 16 ', 'silivriEnerji@gmail.com', 'Piri Mehmet Paşa, Mh, Ahmet Öney Sk. 34570 Silivri/İstanbul', 2),
(66, 'SİLVİYA OTOMOTİV', '0530 640 52 22', 'info@silviya.com', 'Cumhuriyet, Dr. Cemal Kozanoğlu Cd No:26/A, Silivri/İstanbul', 7);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `firmalar`
--
ALTER TABLE `firmalar`
  ADD PRIMARY KEY (`firma_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `firmalar`
--
ALTER TABLE `firmalar`
  MODIFY `firma_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
