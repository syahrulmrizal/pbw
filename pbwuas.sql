-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 07:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbwuas`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `tanggal`, `judul`) VALUES
(1, '2020-07-03', 'Perpanjangan Masa Kegiatan Belajar di Rumah'),
(2, '2020-07-04', 'Pameran Bersama Manunggal Museum Klasik Nusantara'),
(4, '2020-07-31', 'New Normal'),
(5, '2020-07-28', 'Kunjungan Bu Risma');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `foto` varchar(255) NOT NULL,
  `konten` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `tanggal`, `foto`, `konten`) VALUES
(1, 'Kasus Covid-19 Terus Menurun, Tiga Pilar Tandes Ungkap Cara Menekannya', '2020-07-03', 'foto.jpg', 'Tiga pilar Kecamatan Tandes, Kota Surabaya, Jawa Timur, rupanya memiliki cara tersendiri dalam upaya menekan penyebaran Covid-19 di wilayahnya. Mereka pun saling bersinergi dan mendukung antar jajaran Kecamatan, Polsek, Koramil, dan Puskesmas dalam memutus mata rantai pandemi Covid-19. Meski Kecamatan Tandes yang berada di Surabaya Barat itu memiliki wilayah yang luas, tapi hal itu tak menjadi masalah. Sebab para pemimpin di wilayah ini memiliki cara-cara yang masif dan efektif untuk menekan dan memutus mata rantai virus ini.\r\n\r\nCamat Tandes Surabaya, Dodot Wahluyo mengatakan, komunikasi tiga pilar bersama puskesmas menjadi kunci utama dalam menekan penyebaran Covid-19. Salah satunya, ketika memberikan edukasi dan pemahaman kepada masyarakat tentang pentingnya protokol kesehatan.\r\n\r\n“Kita membentuk kampung tangguh dari enam kelurahan itu jumlahnya ada 51 RW dan SK-nya sudah semua. Nah, setiap harinya lurah bersama tiga pilar, Babinsa dan Bhabinkamtibmas juga rutin mengunjungi Kampung Tangguh,” kata Dodot sapaan lekatnya, Kamis (02/07/2020).\r\n\r\nDi samping itu, kata Dodot, setiap pagi pihaknya bersama jajaran samping juga melakukan monitoring ke kampung-kampung, pasar dan tempat keramaian untuk melakukan pengecekan protokol kesehatan. Seperti di pasar itu apakah sudah menyediakan tempat cuci tangan, menerapkan physical distancing dan penggunaan masker. “Mereka keliling Kampung Tangguh itu tidak hanya waktu pagi hari, tapi saat malam juga berkeliling untuk mengunjungi mana RW yang belum maksimal penerapan protokol kesehatan itu didatangi,” terangnya.\r\n\r\nSelama ini, pihaknya menyatakan, selalu mengedepankan cara berkomunikasi saat memberikan pemahaman kepada Satgas di Kampung Tangguh tentang protokol kesehatan. Nah, selanjutnya masing-masing Satgas atau perangkat RT/RW setempat itu kemudian meneruskan kepada warganya. Misalnya, memberikan pemahaman kepada warga bahwa Covid-19 bukanlah penyakit yang memalukan. Sehingga ketika ada orang yang terpapar, warga tidak mengucilkan malah saling mensupport.\r\n\r\n“Kita kasih pemahaman dulu kepada warga, kita kasih arahan, yang terpenting itu kuncinya. Kita tiga pilar setiap seminggu sekali selalu evaluasi kegiatan termasuk bersama dua Kepala Puskesmas,” ungkap dia.\r\n\r\nMenurut dia, sebetulnya semua wilayah di Surabaya menerapkan hal yang sama terkait protokol kesehatan. Hanya saja tinggal kreativitas masing-masing wilayah itu agar bagaimana upaya-upaya yang dilakukan itu bisa masif dan efektif. Namun begitu, ia selalu menekankan kepada jajarannya agar ketika terjun ke lapangan tak lupa mengutamakan keamanan dan keselamatan diri. “Saya selalu sampaikan sebelum kamu melindungi orang, maka kamu harus melindungi diri kita sendiri, itu yang selalu saya sampaikan,” katanya.\r\n\r\nBahkan, ia mengaku, tak jarang ketika ada permasalahan yang menyangkut kasus Covid-19, tiga pilar ini terjun langsung bersama Kepala Puskesmas ke lapangan. Ia mencontohkan, dahulu ada warga yang dinyatakan hasil rapid test reaktif, namun warga itu enggan untuk isolasi di hotel meski kondisi rumahnya kurang layak. Alhasil, camat bersama tiga pilar dan puskesmas harus terjun langsung untuk memberikan pemahaman kepada pihak keluarga agar mau isolasi di hotel.\r\n\r\n“Akhirnya saya turun didampingi kepala Puskesmas, saya kasih pemahaman ke suaminya dan dia akhirnya bisa kita bawa isolasi ke hotel. Intinya selama kita bisa menguwongkan (menghargai) orang, kita datangi ke rumahnya, Insya Allah tidak ada masalah,” tuturnya.\r\n\r\nNamun, bagi dia, kunci utama dalam memutus mata rantai Covid-19 adalah bagaimana bisa memberikan pemahaman kepada warga agar sadar diri, disiplin dalam menerapkan protokol kesehatan. “Jadi kuncinya balik lagi semuanya di situ, dan kita selalu turun bersama tiga pilar rutin melakukan evaluasi,” katanya.\r\n\r\nSementara itu, Kapolsek Tandes Surabaya, Kompol Ricky Tri Dharma menyatakan, meski baru menjabat sekitar tiga bulan, selama ini komunikasi yang terjalin antara tiga pilar bersama pihak Puskesmas selalu berjalan baik. Khususnya ketika menangani kasus Covid-19. Bahkan, sebelum terbentuk Kampung Tangguh, jajaran kecamatan, Polsek, Koramil dan Puskesmas selalu duduk bersama untuk menyamakan persepsi sebelum melangkah.\r\n\r\n“Alhamdulillah begitu saya masuk sampai sekarang sudah kayak keluarga. Kita prinsipnya bangun komunikasi dulu, kalau sudah terbuka dan saling percaya akhirnya tidak salah penanganannya. Contohnya kegiatan rutin patroli kita setiap pagi dan malam. Kita saling melengkapi dari kekuatan masing-masing,” kata Kompol Ricky.\r\n\r\nBahkan, untuk memasifkan upaya dalam memutus mata rantai Covid-19, Kompol Ricky juga menerjunkan seluruh Kanit-nya. Mereka bertugas menjadi pendamping di setiap Satgas Covid-19 di Kampung Tangguh. Terlebih, mereka juga melakukan monitoring setiap Kampung Tangguh, seperti apa saja kelengkapan protokol kesehatan yang masih kurang\r\n\r\n“Saya bagi tugas ke mereka sebagai pendamping setiap Satgas di Kampung Tangguh. Jadi semua anggota terlibat termasuk Bhabinkamtibmas,” ungkap dia.\r\n\r\nMenurut dia, adanya Kampung Tangguh ini sangat membantu dan mendukung masyarakat. Karena warga juga lebih merasa aman dan dapat memfilter sendiri kampungnya, baik dari segi data awal maupun keluar masuknya orang. Alhasil, warga yang sebelumnya keluar masuk kampung tidak jelas, kini bisa termonitor.\r\n\r\n“Saya selalu sampaikan ke warga, secara tidak langsung yang bisa mereka petik hasilnya dari Kampung Tangguh itu tidak terhingga. Pertama keamanan dan kedua warisan nenek moyang kita, yakni gotong-royong,” paparnya.\r\n\r\nApalagi, dengan adanya penjagaan di Kampung Tangguh dan akses masuk satu pintu itu membuat kampung menjadi lebih aman dari potensi pencurian. Manfaat lain yang didapat dari Kampung Tangguh yakni, warga yang tadinya tidak saling mengenal, kini bisa saling kenal satu sama lain. “Itu reward yang selalu saya sampaikan ke warga,” paparnya.\r\n\r\nHal yang sama juga disampaikan Danramil Tandes Surabaya, Mayor Inf Suwadi. Ia menyampaikan, bahwa tiga pilar Kecamatan Tandes selalu bersinergi dalam setiap kegiatan kewilayahan dalam berbagai hal. Salah satunya kegiatan patroli ke tempat-tempat keramaian, baik saat siang maupun malam hari.\r\n\r\n\"Sasarannya mulai Kampung Tangguh, Pasar, Warkop (warung kopi) dan tempat keramaian lainnya untuk memberikan imbauan agar masyarakat selalu memperhatikan protokol kesehatan dan memberikan rasa aman bagi masyarakat,\" kata Mayor Inf Suwadi.\r\n\r\nTak hanya itu, Mayor Inf Suwadi juga menyatakan, pihaknya bersama jajaran kepolisian dan kecamatan juga melakukan pendampingan kepada Satgas di Kampung Tangguh. Bahkan, pendampingan kepada Puskesmas dalam rangka pemantauan warga yang melaksanakan isolasi mandiri juga dilakukan.\r\n\r\n“Selain itu pendampingan juga dilakukan saat pelaksanaan tracing terhadap warga yang mempunyai hubungan erat dengan pasien Covid-19 di wilayah binaan,” pungkasnya.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(2, 'rizal', '$2y$10$1YitOKKnb8HfVKqPJQHF.uGKFmfleJ0otxF1IhxM7WWKU46q/3UXO'),
(3, 'aku', '$2y$10$m9QTgNW3ROEOKyb6FxvnY.kl8ANM/rAS/YJHWbI9IMVAQGl/ayfgm'),
(4, 'kamu', '$2y$10$7UaesNoos5tRnE1YfjXpPuAhX34UET7B7r9L0Ee/qLabpefspOP06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
