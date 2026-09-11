-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 11, 2026 at 04:07 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwl_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isi` text COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal` date NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, 'Pelatihan Kewirausahaan Desa Banjaran', 'Desa Banjaran mengadakan pelatihan kewirausahaan untuk pemuda desa agar mandiri secara ekonomi.', 'beritaperbaikanjalan.jpeg', '2025-06-01', NULL, NULL),
(2, 'Perbaikan Jalan Utama Desa', 'Pemerintah desa telah memulai proyek perbaikan jalan utama untuk kenyamanan warga.', 'beritakewirausahaan.webp', '2025-06-10', NULL, NULL),
(5, 'Desa Banjaran Resmi Ditetapkan Sebagai Desa Wisata', 'Desa Banjaran, yang terletak di Kecamatan Bojongsari, Purbalingga, kini resmi memiliki status sebagai desa wisata.', '1752005200_e2a85b778f491b0ab321.jpeg', '2025-07-08', NULL, NULL),
(6, 'Peringatan Hari Sungai Nasional 2024 di Wisata Banjaran', 'Hari Sungai Nasional yang jatuh pada tanggal 28 Juli 2024 diperingati dengan meriah di Wisata Banjaran, Desa Banjaran, Kecamatan Bojongsari, Kabupaten Purbalingga.', '1752011918_335f1325a628ed6aea28.jpg', '2025-07-08', NULL, NULL),
(7, 'Sholat Jumat Pemdes Bersama Warga Masyarakat Banjaran', 'Sholat jumat merupakan sholat berjamaah yang diwajibkan bagi setiap umat islam pada waktu dhuhur di hari jumat.', '1752013314_6a3489b6dc35dc974ecc.jpeg', '2025-07-08', NULL, NULL),
(8, 'Penerimaan Mahasiswa KKN dari Universitas Jenderal Soedirman Periode Juli-Agustus', 'Mahasiswa Universitas Jenderal Soedirman melaksanakan Kuliah Kerja Nyata (KKN) di Desa Banjaran, Kecamatan Bojongsari, Kabupaten Purbalingga mulai tanggal 10 Juli 2024.', '1752013440_103a8a754ab6bafe6e8f.jpg', '2025-07-08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat_history`
--

CREATE TABLE `chat_history` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `sender` enum('user','bot') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_history`
--

INSERT INTO `chat_history` (`id`, `user_id`, `message`, `sender`, `created_at`, `updated_at`) VALUES
(24, 3, 'halo, saya ingin tahu dimana lokasi desa wisata banjaran', 'user', '2025-12-22 16:01:51', '2025-12-22 16:01:51'),
(25, 3, 'Halo! Selamat datang di Desa Wisata Banjaran. 👋 Senang sekali Anda tertarik untuk berkunjung!\n\nSebagai Asisten Cerdas, fokus utama saya adalah memberikan informasi detail mengenai berbagai paket wisata seru yang kami tawarkan.\n\nUntuk informasi detail mengenai lokasi spesifik Desa Wisata Banjaran, Anda bisa memeriksanya melalui peta daring. Namun, yang pasti, Desa Wisata Banjaran menawarkan keindahan alam yang luar biasa, terutama di sekitar Kali Klawing dan Bendungan Slinga. 🏞️\n\nApakah Anda ingin tahu lebih lanjut mengenai kegiatan seru apa saja yang bisa Anda lakukan di sini? Kami memiliki banyak pilihan paket yang menarik, seperti:\n\n*   **Paket River Tubing** (Rp 25.000) untuk pengalaman menantang di Sungai Klawing.\n*   **Paket Camping** (Rp 60.000) di tepi Kali Klawing.\n*   **Paket Kuliner** (Rp 50.000) untuk mencicipi hidangan khas kami.\n\nSilakan beritahu saya paket mana yang membuat Anda penasaran! 😊', 'bot', '2025-12-22 16:01:57', '2025-12-22 16:01:57'),
(26, 15, 'halo, saya ingin mengetahui informasi tentang fasilitas apa saja yang ada di desa wisata banjaran?', 'user', '2025-12-22 16:07:41', '2025-12-22 16:07:41'),
(27, 15, 'Halo! Selamat datang di Desa Wisata Banjaran. Saya Asisten Cerdas Anda di sini. Senang sekali Anda tertarik dengan desa kami! 😊\n\nFasilitas utama di Desa Wisata Banjaran berpusat pada pengalaman alam, budaya, dan aktivitas luar ruangan yang kami tawarkan.\n\nSecara garis besar, fasilitas yang tersedia di Desa Wisata Banjaran meliputi:\n\n1.  **Area Kegiatan Alam:** Kami memiliki akses ke **Kali Klawing** dan **Sungai Klawing** yang menjadi lokasi utama untuk aktivitas air seperti *River Tubing* dan *Memancing*.\n2.  **Akomodasi dan Kegiatan Komunitas:** Tersedia area khusus untuk kegiatan **Camping** di tepi kali dan lokasi untuk **Malam Keakraban (Makrab)** yang dilengkapi dengan fasilitas api unggun.\n3.  **Area Olahraga & Rekreasi:** Kami menyediakan lapangan atau area khusus untuk kegiatan **Outbound** yang menyenangkan.\n4.  **Kolam/Tempat Berenang:** Ada area **Berenang** yang sejuk dan asri di **Bendungan Slinga**.\n5.  **Pusat Kuliner:** Terdapat lokasi di mana Anda bisa menikmati **Kuliner** cita rasa khas desa kami.\n6.  **Panggung Seni & Budaya:** Tersedia area untuk pertunjukan seperti **Pertunjukan Reog** khas Desa Banjaran.\n7.  **Spot Pemandangan:** Terdapat **Spot Nyore** yang indah, cocok untuk bersantai sambil menikmati secangkir kopi.\n\nSemua fasilitas ini terangkum dalam berbagai **Paket Wisata** kami.\n\n**Beberapa paket populer yang bisa Anda coba untuk memanfaatkan fasilitas kami:**\n\n| Paket Wisata | Harga Mulai | Fasilitas Kunci yang Digunakan |\n| :--- | :--- | :--- |\n| **Paket Camping** | Rp 60.000 | Tepi Kali Klawing, fasilitas tenda lengkap. |\n| **Paket River Tubing** | Rp 25.000 | Sungai Klawing, perlengkapan tubing. |\n| **Paket Outbound** | Rp 120.000 | Area outbound khusus, perlengkapan permainan. |\n| **Paket Kuliner** | Rp 50.000 | Area makan, menu khas desa. |\n\nApakah Anda tertarik untuk mencoba salah satu paket di atas? Kami siap membantu Anda merencanakan kunjungan yang luar biasa! ✨', 'bot', '2025-12-22 16:07:48', '2025-12-22 16:07:48'),
(28, 15, 'dimana lokasi desa wisata banjaran?', 'user', '2025-12-22 16:21:43', '2025-12-22 16:21:43'),
(29, 15, 'Halo! Senang sekali kamu tertarik mengunjungi Desa Wisata Banjaran! 😊\n\nLokasi Desa Wisata Banjaran kita sangat mudah dijangkau, lho.\n\nDesa Wisata Banjaran ini terletak di **Kecamatan Padamara, Kabupaten Purbalingga, Jawa Tengah.**\n\nKita terkenal banget karena memiliki pemandangan alam yang indah, terutama karena lokasinya yang berada di tepi **Kali Klawing** yang asri.\n\nKalau kamu mau menggunakan navigasi, coba cari di Google Maps dengan kata kunci \"Desa Wisata Banjaran Purbalingga\" dijamin langsung ketemu! 🗺️\n\nAda lagi yang bisa aku bantu, mungkin ingin tahu detail tentang paket wisata seru yang kita tawarkan? 😉', 'bot', '2025-12-22 16:21:48', '2025-12-22 16:21:48'),
(30, 15, 'bagaimana sejarah desa nya?', 'user', '2025-12-22 16:26:39', '2025-12-22 16:26:39'),
(31, 15, 'Wah, pertanyaan yang menarik sekali! Senang Anda tertarik mendalami akar Desa Wisata Banjaran. 😊\n\nSebagai Asisten Cerdas di sini, saya bisa ceritakan sedikit mengenai Desa Banjaran.\n\nDesa Wisata Banjaran adalah permata yang terkenal karena keindahan alamnya yang masih asri, terutama posisinya yang strategis di dekat **Sungai Klawing**. Sejarah Desa Banjaran umumnya berpusat pada kearifan lokal dalam menjaga ekosistem sungai dan tradisi budayanya yang kuat.\n\nTransformasi menjadi Desa Wisata adalah hasil kolaborasi hebat dari masyarakat setempat yang ingin berbagi kekayaan alam dan budaya mereka—seperti tarian Reog khas daerah sini—dengan para pengunjung. Jadi, Banjaran adalah perpaduan harmonis antara alam, tradisi, dan semangat komunitas.\n\n**Kalau Anda ingin merasakan langsung sejarah dan budaya yang masih hidup di Desa Banjaran, kami punya beberapa paket wisata yang sangat direkomendasikan:**\n\n1.  **Paket Pertunjukan Reog:** Untuk menyaksikan langsung seni tari khas Desa Banjaran (hanya Rp 10.000).\n2.  **Paket River Tubing:** Untuk merasakan langsung aliran Sungai Klawing yang menjadi nadi desa (hanya Rp 25.000).\n3.  **Paket Kuliner:** Untuk mencicipi cita rasa khas yang diwariskan turun-temurun (hanya Rp 50.000).\n\nApakah Anda tertarik mencoba salah satu paket tersebut setelah mengetahui sedikit tentang latar belakang desa kami? Kami tunggu kunjungan Anda! 🤗', 'bot', '2025-12-22 16:26:45', '2025-12-22 16:26:45'),
(32, 15, 'apa saja fasilitasnya?', 'user', '2025-12-22 16:28:06', '2025-12-22 16:28:06'),
(33, 15, 'Gemini Error: You exceeded your current quota, please check your plan and billing details. For more information on this error, head to: https://ai.google.dev/gemini-api/docs/rate-limits. To monitor your current usage, head to: https://ai.dev/usage?tab=rate-limit. \n* Quota exceeded for metric: generativelanguage.googleapis.com/generate_content_free_tier_requests, limit: 20, model: gemini-2.5-flash\nPlease retry in 54.122531703s.', 'bot', '2025-12-22 16:28:07', '2025-12-22 16:28:07'),
(34, 15, 'apa saja fasilitasnya?', 'user', '2025-12-22 16:35:04', '2025-12-22 16:35:04'),
(35, 15, 'Gemini Error: You exceeded your current quota, please check your plan and billing details. For more information on this error, head to: https://ai.google.dev/gemini-api/docs/rate-limits. To monitor your current usage, head to: https://ai.dev/usage?tab=rate-limit. \n* Quota exceeded for metric: generativelanguage.googleapis.com/generate_content_free_tier_requests, limit: 20, model: gemini-2.5-flash\nPlease retry in 53.124972357s.', 'bot', '2025-12-22 16:35:08', '2025-12-22 16:35:08'),
(36, 15, 'hai', 'user', '2025-12-22 16:43:14', '2025-12-22 16:43:14'),
(37, 15, 'Gemini Error: You exceeded your current quota, please check your plan and billing details. For more information on this error, head to: https://ai.google.dev/gemini-api/docs/rate-limits. To monitor your current usage, head to: https://ai.dev/usage?tab=rate-limit. \n* Quota exceeded for metric: generativelanguage.googleapis.com/generate_content_free_tier_requests, limit: 20, model: gemini-2.5-flash\nPlease retry in 45.385013824s.', 'bot', '2025-12-22 16:43:16', '2025-12-22 16:43:16'),
(38, 15, 'halo', 'user', '2025-12-22 16:45:15', '2025-12-22 16:45:15'),
(39, 15, 'Gemini Error: models/gemini-1.5-flash is not found for API version v1beta, or is not supported for generateContent. Call ListModels to see the list of available models and their supported methods.', 'bot', '2025-12-22 16:45:16', '2025-12-22 16:45:16'),
(40, 15, 'halo', 'user', '2025-12-22 16:46:16', '2025-12-22 16:46:16'),
(41, 15, 'Gemini Error: models/gemini-pro is not found for API version v1beta, or is not supported for generateContent. Call ListModels to see the list of available models and their supported methods.', 'bot', '2025-12-22 16:46:17', '2025-12-22 16:46:17'),
(42, 15, 'test', 'user', '2025-12-22 16:47:10', '2025-12-22 16:47:10'),
(43, 15, 'AI ERROR (Model Not Found). Berikut daftar model yang tersedia di akun Anda:\n- models/gemini-2.5-flash\n- models/gemini-2.5-pro\n- models/gemini-2.0-flash-exp\n- models/gemini-2.0-flash\n- models/gemini-2.0-flash-001\n- models/gemini-2.0-flash-exp-image-generation\n- models/gemini-2.0-flash-lite-001\n- models/gemini-2.0-flash-lite\n- models/gemini-2.0-flash-lite-preview-02-05\n- models/gemini-2.0-flash-lite-preview\n- models/gemini-exp-1206\n- models/gemini-2.5-flash-preview-tts\n- models/gemini-2.5-pro-preview-tts\n- models/gemma-3-1b-it\n- models/gemma-3-4b-it\n- models/gemma-3-12b-it\n- models/gemma-3-27b-it\n- models/gemma-3n-e4b-it\n- models/gemma-3n-e2b-it\n- models/gemini-flash-latest\n- models/gemini-flash-lite-latest\n- models/gemini-pro-latest\n- models/gemini-2.5-flash-lite\n- models/gemini-2.5-flash-image-preview\n- models/gemini-2.5-flash-image\n- models/gemini-2.5-flash-preview-09-2025\n- models/gemini-2.5-flash-lite-preview-09-2025\n- models/gemini-3-pro-preview\n- models/gemini-3-flash-preview\n- models/gemini-3-pro-image-preview\n- models/nano-banana-pro-preview\n- models/gemini-robotics-er-1.5-preview\n- models/gemini-2.5-computer-use-preview-10-2025\n- models/deep-research-pro-preview-12-2025\n\nSilakan beritahu saya salah satu nama di atas.', 'bot', '2025-12-22 16:47:11', '2025-12-22 16:47:11'),
(44, 15, 'halo', 'user', '2025-12-22 16:49:19', '2025-12-22 16:49:19'),
(45, 15, 'Gemini Error (429): You exceeded your current quota, please check your plan and billing details. For more information on this error, head to: https://ai.google.dev/gemini-api/docs/rate-limits. To monitor your current usage, head to: https://ai.dev/usage?tab=rate-limit. \n* Quota exceeded for metric: generativelanguage.googleapis.com/generate_content_free_tier_input_token_count, limit: 0, model: gemini-2.0-flash\n* Quota exceeded for metric: generativelanguage.googleapis.com/generate_content_free_tier_requests, limit: 0, model: gemini-2.0-flash\n* Quota exceeded for metric: generativelanguage.googleapis.com/generate_content_free_tier_requests, limit: 0, model: gemini-2.0-flash\nPlease retry in 41.537263271s.', 'bot', '2025-12-22 16:49:20', '2025-12-22 16:49:20'),
(46, 15, 'hai', 'user', '2025-12-22 16:52:21', '2025-12-22 16:52:21'),
(47, 15, 'Gemini Error (429): You exceeded your current quota, please check your plan and billing details. For more information on this error, head to: https://ai.google.dev/gemini-api/docs/rate-limits. To monitor your current usage, head to: https://ai.dev/usage?tab=rate-limit. \n* Quota exceeded for metric: generativelanguage.googleapis.com/generate_content_free_tier_requests, limit: 20, model: gemini-2.5-flash\nPlease retry in 38.755009939s.', 'bot', '2025-12-22 16:52:23', '2025-12-22 16:52:23'),
(48, 3, 'berikan informasi tentang paket river tubing', 'user', '2025-12-31 03:10:27', '2025-12-31 03:10:27'),
(49, 3, 'Halo! Selamat datang di Asisten Cerdas Desa Wisata Banjaran! 😊\n\nWah, Anda tertarik dengan paket yang sangat seru dan memacu adrenalin! Tentu saja, saya siap berikan informasi lengkap mengenai Paket River Tubing kami.\n\nIni dia detailnya:\n\n| Nama Paket | Harga | Deskripsi |\n| :--- | :--- | :--- |\n| **Paket River Tubing** | **Rp 25.000** | River tubing di Sungai Klawing dengan pengalaman yang luar biasa melewati rintangan arus yang cukup menantang. |\n\nJadi, dengan biaya hanya Rp 25.000, Anda sudah bisa merasakan keseruan meluncur di atas air menggunakan ban, menikmati pemandangan alam, dan merasakan tantangan dari arus Sungai Klawing yang menawan! 🌊\n\nApakah ada paket lain yang ingin Anda ketahui informasinya, misalnya Paket Camping atau Paket Outbound? Saya siap membantu!', 'bot', '2025-12-31 03:10:31', '2025-12-31 03:10:31'),
(50, 3, 'jika ingin memesan  paket river tubing untuk 10 orang, berapa harga akhir pemesanan?', 'user', '2025-12-31 03:13:16', '2025-12-31 03:13:16'),
(51, 3, 'Wah, terima kasih banyak sudah tertarik dengan Paket River Tubing kami di Desa Wisata Banjaran! Itu pilihan yang seru dan menantang! 🤩\n\nBerikut detail perhitungannya:\n\n1.  **Harga Paket River Tubing per orang:** Rp 25.000\n2.  **Jumlah Peserta:** 10 orang\n\n**Total Harga Pemesanan:**\nRp 25.000 x 10 = **Rp 250.000**\n\nJadi, untuk pemesanan River Tubing sebanyak 10 orang, total harga yang perlu dibayarkan adalah **Rp 250.000**.\n\nSiap-siap merasakan pengalaman luar biasa melewati rintangan arus Sungai Klawing ya! Dijamin seru! 🌊🚣‍♂️\n\nAda lagi yang bisa saya bantu terkait paket wisata lainnya? 😊', 'bot', '2025-12-31 03:13:18', '2025-12-31 03:13:18'),
(52, 3, 'berikan informasi tentang paket renang', 'user', '2025-12-31 03:44:08', '2025-12-31 03:44:08'),
(53, 3, 'Halo! Tentu saja, dengan senang hati saya akan berikan informasi lengkap mengenai Paket Renang yang tersedia di Desa Wisata Banjaran. 🏊‍♀️\n\nIni dia detail untuk Paket Renang:\n\n| Informasi Paket | Detail |\n| :--- | :--- |\n| **Nama Paket** | Paket Renang |\n| **Harga** | **Rp 15.000** |\n| **Deskripsi** | Paket Berenang di Bendungan Slinga dengan suasana alam yang sejuk dan asri. |\n\nBayangkan berenang sambil menikmati pemandangan alam yang hijau dan udara yang segar di sekitar Bendungan Slinga. Cocok banget buat kamu yang mau relaksasi atau membawa keluarga! 🌿\n\nAda lagi paket wisata lain yang ingin Anda ketahui? Kami punya banyak pilihan seru lainnya! 😊', 'bot', '2025-12-31 03:44:12', '2025-12-31 03:44:12'),
(54, 3, 'ada paket apa saja', 'user', '2025-12-31 03:50:53', '2025-12-31 03:50:53'),
(55, 3, 'Halo! Selamat datang di Desa Wisata Banjaran! Saya senang sekali Anda tertarik dengan paket-paket wisata kami. 😊\n\nDesa Banjaran menawarkan berbagai pengalaman seru, mulai dari yang memacu adrenalin sampai yang santai sambil menikmati alam.\n\nBerikut adalah daftar lengkap paket wisata yang tersedia saat ini:\n\n| Nama Paket | Harga | Deskripsi Singkat |\n| :--- | :--- | :--- |\n| **Paket Camping** | Rp 60.000 | Camping di tepi Kali Klawing dengan fasilitas lengkap. |\n| **Paket Outbound** | Rp 120.000 | Outbound menyenangkan untuk grup & anak-anak, cocok untuk membangun kekompakan! |\n| **Paket Makrab** | Rp 70.000 | Malam Keakraban bersama komunitas dengan api unggun yang hangat. |\n| **Paket Kuliner** | Rp 50.000 | Rasakan nikmatnya kuliner cita rasa khas Banjaran bersama orang terdekat. |\n| **Paket River Tubing** | Rp 25.000 | River tubing di Sungai Klawing melewati rintangan arus yang cukup menantang! 🛶 |\n| **Paket Pertunjukan Reog** | Rp 10.000 | Pertunjukan Seni Tari Reog khas Desa Banjaran dengan gerakan tarian yang khas. |\n| **Paket Memancing** | Rp 30.000 | Memancing ikan di Sungai Klawing bersama keluarga, sahabat, dan teman terdekat. |\n| **Paket Renang** | Rp 15.000 | Berenang di Bendungan Slinga dengan suasana alam yang sejuk dan asri. |\n| **Paket Nyore** | Rp 5.000 | Temukan dan Kunjungi Spot Nyore bersama teman terdekat sambil menikmati secangkir kopi. ☕ |\n\nMana nih yang paling menarik perhatian Anda? Kalau ingin tahu detail lebih lanjut tentang fasilitas, durasi, atau cara pemesanan salah satu paket di atas, jangan sungkan untuk bertanya ya! Kami siap bantu merencanakan liburan terbaik Anda. ✨', 'bot', '2025-12-31 03:51:00', '2025-12-31 03:51:00'),
(56, 3, 'berikan rekomendasi paket wisata untuk keluarga dengan 2 balita', 'user', '2025-12-31 03:51:51', '2025-12-31 03:51:51'),
(57, 3, 'Wah, senang sekali Anda berencana membawa keluarga kecil ke Desa Wisata Banjaran! 😊 Membawa dua balita memang perlu perhatian ekstra agar liburan tetap aman dan menyenangkan.\n\nBerdasarkan daftar paket wisata kami, saya sangat merekomendasikan paket-paket yang santai, aman, dan tidak terlalu menguras energi si kecil.\n\nBerikut rekomendasi paket wisata yang paling cocok untuk keluarga dengan 2 balita:\n\n### 1. Paket Kuliner 🍜\n*   **Kenapa cocok?** Ini adalah pilihan termudah dan paling menyenangkan untuk semua usia. Anda bisa menikmati hidangan khas Banjaran tanpa perlu khawatir dengan aktivitas fisik yang terlalu berat.\n*   **Deskripsi:** Rasakan nikmatnya kuliner cita rasa khas bersama orang terdekat.\n*   **Harga:** Hanya Rp 50.000\n\n### 2. Paket Nyore ☕\n*   **Kenapa cocok?** Cocok sekali untuk bersantai di sore hari ketika balita biasanya mulai rewel atau membutuhkan suasana tenang. Anda bisa menikmati kopi sambil si kecil melihat pemandangan.\n*   **Deskripsi:** Temukan dan Kunjungi Spot Nyore bersama teman terdekat dengan secangkir kopi.\n*   **Harga:** Sangat terjangkau, cuma Rp 5.000!\n\n### 3. Paket Pertunjukan Reog 🎭\n*   **Kenapa cocok?** Balita sangat menyukai visual dan musik. Pertunjukan Reog bisa menjadi hiburan visual yang menarik dan mengalihkan perhatian mereka sejenak.\n*   **Deskripsi:** Pertunjukan Seni Tari Reog khas Desa Banjaran dengan gerakan tarian yang khas.\n*   **Harga:** Rp 10.000\n\n### 4. Paket Memancing 🎣\n*   **Kenapa cocok?** Aktivitas ini cenderung tenang dan bisa dilakukan sambil duduk, cocok untuk anak yang sudah mulai tertarik melihat ikan. Namun, pastikan pengawasan ketat karena lokasinya di tepi Sungai Klawing.\n*   **Deskripsi:** Memancing ikan di Sungai Klawing bersama keluarga, sahabat, dan teman terdekat.\n*   **Harga:** Rp 30.000\n\n---\n\n**⚠️ Catatan Penting untuk Balita:**\n\nSaya **TIDAK merekomendasikan** paket-paket yang melibatkan air dengan arus deras seperti **Paket River Tubing** (risiko tinggi untuk balita) atau aktivitas fisik yang intens seperti **Paket Outbound**.\n\nSemoga keluarga Anda menikmati waktu yang indah di Desa Wisata Banjaran! Jika ada pertanyaan lain, jangan sungkan untuk bertanya ya. 😊', 'bot', '2025-12-31 03:51:58', '2025-12-31 03:51:58'),
(58, 3, 'tolong hitungkan paket memancing dengan jumlah 5 orang', 'user', '2026-01-10 19:23:34', '2026-01-10 19:23:34'),
(59, 3, 'Wah, pilihan yang bagus! Paket Memancing di Sungai Klawing memang asyik banget, cocok buat kumpul bareng keluarga atau sahabat. 🎣\n\nMari kita hitung totalnya:\n\n1.  **Harga per orang:** Rp 30.000\n2.  **Jumlah orang:** 5 orang\n\n**Total Biaya:** Rp 30.000 x 5 = **Rp 150.000**\n\nJadi, untuk 5 orang, total biaya Paket Memancingnya adalah **Rp 150.000**. Selamat menikmati momen memancing yang seru di Banjaran! 😊', 'bot', '2026-01-10 19:23:39', '2026-01-10 19:23:39'),
(60, 3, 'saya ingn memesan paket kuliner', 'user', '2026-01-10 19:26:01', '2026-01-10 19:26:01'),
(61, 3, 'Halo! Selamat datang di Asisten Cerdas Desa Wisata Banjaran. Wah, pilihan yang sangat tepat! Paket Kuliner kami memang menjadi favorit untuk menikmati hidangan khas Banjaran. 😋\n\nIni detail lengkap untuk **Paket Kuliner** yang Anda cari:\n\n| Detail Paket | Informasi |\n| :--- | :--- |\n| **Nama Paket** | Paket Kuliner |\n| **Harga** | Rp 50.000 |\n| **Deskripsi** | Rasakan nikmatnya kuliner cita rasa khas Desa Banjaran bersama orang terdekat. Cocok untuk memanjakan lidah Anda! |\n\nApakah Anda ingin saya bantu dengan informasi ketersediaan tanggal atau bagaimana cara melanjutkan pemesanan paket ini? 😊', 'bot', '2026-01-10 19:26:06', '2026-01-10 19:26:06'),
(62, 5, 'halo saya ingin bertanya fasilitas apa saja yang ada di desa ini?', 'user', '2026-09-11 14:12:17', '2026-09-11 14:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `title`, `image`, `created_at`) VALUES
(1, 'Sunset di Klawing', 'klawingsonten.jpeg', NULL),
(2, 'Bendung Slinga', 'bendungslinga.jpg', NULL),
(3, 'Kuliner di Desa Banjaran', 'kuliner.jpg', NULL),
(4, 'Kesenian Kuda Lumping', 'kudalumping.jpg', NULL),
(6, 'Memancing di Sungai Klawing', '1752004444_faab11fad472141bec5e.jpg', '2025-07-08 19:54:04'),
(7, 'Nyore di Spot Favorit', '1752010697_0c2dc945cfaaf3c9eca9.webp', '2025-07-08 21:38:17'),
(8, 'River Tubing Ekstrim', '1752010736_266288d1c0c52933ac28.jpg', '2025-07-08 21:38:56'),
(10, 'Produk Lokal Desa Banjaran', '1752010888_e03c05cf194ca67ead26.jpeg', '2025-07-08 21:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `user_id`, `name`, `email`, `phone`, `created_at`) VALUES
(2, 3, 'Puriarto', 'widipuriarto@gmail.com', '082135426245', NULL),
(4, 5, 'Admin', 'admin@example.com', '1234567890', NULL),
(5, 6, 'Wiidz', 'wiidz@example.com', '9876543210', NULL),
(6, 7, 'widi2', 'widi2@example.com', '', NULL),
(7, 8, 'ini abc', 'abc@gmail.ccom', '', NULL),
(8, 9, 'abcd', 'abcd@gmail.com', '', NULL),
(9, 10, 'coba', 'coba@example.com', '', NULL),
(10, 11, 'Bagas', 'bagas@example.com', '123456789', NULL),
(11, 14, 'Wiidz', 'widipuriarto@gmail.com', '', '2025-07-09 02:44:52'),
(12, 15, 'Widi Puriarto', 'widipuriarto25@gmail.com', '', '2025-07-09 02:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(2, '2025-06-28-180820', 'App\\Database\\Migrations\\Users', 'default', 'App', 1751134451, 1),
(3, '2025-06-28-182029', 'App\\Database\\Migrations\\Members', 'default', 'App', 1751135216, 2),
(4, '2025-06-28-182235', 'App\\Database\\Migrations\\PaketWisata', 'default', 'App', 1751135216, 2),
(5, '2025-06-28-191343', 'App\\Database\\Migrations\\Galeri', 'default', 'App', 1751138296, 3),
(6, '2025-06-28-191505', 'App\\Database\\Migrations\\Videos', 'default', 'App', 1751138296, 3),
(7, '2025-06-28-191632', 'App\\Database\\Migrations\\Pesan', 'default', 'App', 1751138296, 3),
(8, '2025-06-28-191715', 'App\\Database\\Migrations\\Transaksi', 'default', 'App', 1751138334, 4),
(9, '2025-06-29-172558', 'App\\Database\\Migrations\\Berita', 'default', 'App', 1751218003, 5),
(10, '2025-12-22-123554', 'App\\Database\\Migrations\\ChatHistory', 'default', 'App', 1766407013, 6);

-- --------------------------------------------------------

--
-- Table structure for table `paket_wisata`
--

CREATE TABLE `paket_wisata` (
  `id` int NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `duration` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `min_person` int NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket_wisata`
--

INSERT INTO `paket_wisata` (`id`, `title`, `description`, `price`, `duration`, `min_person`, `image`, `created_at`) VALUES
(1, 'Paket Camping', 'Camping di tepi Kali Klawing dengan fasilitas lengkap', 60000, '22', 10, 'camping.jpg', NULL),
(2, 'Paket Outbound', 'Outbound menyenangkan untuk grup & anak-anak', 120000, '1D', 20, 'outbound.jpg', NULL),
(6, 'Paket Makrab', 'Malam Keakraban bersama komunitas dengan api unggun', 70000, '2', 30, '1751531014_71f0b8677c6e15fa28fb.jpeg', NULL),
(8, 'Paket Kuliner', 'Rasakan nikmatnya kuliner cita rasa khas bersama orang terdekat', 50000, '1', 4, '1752003472_14d608dc325d89e13594.jpg', '2025-07-08 19:37:52'),
(9, 'Paket River Tubing', 'River tubing di Sungai Klawing dengan pengalaman yang luar biasa melewati rintangan arus yang cukup menantang', 25000, '1', 4, '1752010124_32da844b61866b9875df.jpg', '2025-07-08 21:28:44'),
(10, 'Paket Pertunjukan Reog', 'Pertunjukan Seni Tari Reog khas Desa Banjaran dengan gerakan tarian yang khas', 10000, '1', 5, '1752010318_374bce80e03e6150ccbd.jpg', '2025-07-08 21:31:58'),
(11, 'Paket Memancing', 'Memancing ikan di Sungai Klawing bersama keluarga, sahabat, dan teman terdekat', 30000, '2', 5, '1752010390_76837c3538a6fdf2817e.jpg', '2025-07-08 21:33:10'),
(12, 'Paket Renang', 'Paket Berenang di Bendungan Slinga dengan suasana alam yang sejuk dan asri', 15000, '1', 5, '1752010495_1cfc460985d23679d41d.jpg', '2025-07-08 21:34:55'),
(13, 'Paket Nyore', 'Temukan dan Kunjungi Spot Nyore bersama teman terdekat dengan secangkir kopi', 5000, '1', 4, '1752010669_4e54d78d01b67611f7a5.webp', '2025-07-08 21:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `subject` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'Andi', 'andi@example.com', 'Inquiry Paket', 'Saya ingin tahu harga untuk 15 orang.', NULL),
(2, 'wda', 'widipuriarto@gmail.com', 'test', 'testing', NULL),
(3, 'Puriarto Bagas Widiantoro', 'widipuriarto@gmail.com', 'test', 'testing website again', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `paket_id` int NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `jumlah_orang` int NOT NULL,
  `total_harga` int NOT NULL,
  `metode_pembayaran` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` enum('pending','menunggu','diterima','ditolak') COLLATE utf8mb4_general_ci DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `member_id`, `paket_id`, `tanggal_pemesanan`, `jumlah_orang`, `total_harga`, `metode_pembayaran`, `bukti_pembayaran`, `created_at`, `status`) VALUES
(4, 2, 1, '2025-06-05', 21, 1260000, 'BRI', NULL, NULL, 'ditolak'),
(5, 2, 1, '2025-06-19', 21, 1260000, 'BRI', '1751216140_c5e606c557327c05f593.png', NULL, 'diterima'),
(6, 2, 1, '2025-06-26', 12, 720000, 'BCA', NULL, NULL, 'pending'),
(7, 2, 2, '2025-06-25', 20, 2400000, 'BRI', '1751290250_136de4a482a3153f6683.png', NULL, 'diterima'),
(8, 2, 1, '2025-07-10', 10, 600000, 'BRI', '1751531247_a795d836fb4edc7fec6a.jpg', NULL, 'diterima'),
(13, 10, 6, '2025-07-09', 40, 2800000, 'MANDIRI', '1752015662_6e185e054580ce79956f.jpg', NULL, 'diterima'),
(14, 10, 11, '2025-07-08', 5, 150000, 'BRI', '1752015701_643454924c616295e8af.jpeg', NULL, 'diterima'),
(15, 12, 1, '2025-07-02', 10, 600000, 'BRI', '1752029207_19174eccea0a0ff6aa78.jpeg', NULL, 'diterima'),
(16, 2, 2, '2025-12-25', 20, 2400000, 'BRI', '1766397240_dcadb4bcbb9e3256a5e3.jpg', NULL, 'diterima'),
(17, 12, 9, '2026-01-02', 20, 500000, 'BRI', NULL, NULL, 'pending'),
(18, 2, 1, '2026-01-08', 20, 1200000, 'BCA', NULL, NULL, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('admin','member') COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(3, NULL, 'widi', NULL, '$2y$10$O5ZWwAD50BVb3meW11/4H.FqMZ0WpgULj0epA6x9.5FiMs19pvFy.', 'member', NULL),
(5, NULL, 'admin', NULL, '$2y$10$A0ev0RB7VWDvfEx3XBosM.UVBALu8xsiI9h3m5FtEEaWbLQtKXNIG', 'admin', NULL),
(6, NULL, 'wiidz', NULL, '$2y$10$WjBqYq3l1y0KWCuLa1fYH.CUz5VkFz0/QN7os6Lm1f9y5CI84WkfG', 'member', NULL),
(7, NULL, 'widi2', NULL, '$2y$10$1niaRK5LUvCGqYXG/zagpOr8W3v/L28AFLq3jBTnfocEQlMx.M4vG', 'member', NULL),
(8, NULL, 'abc', NULL, '$2y$10$B1CAtlKYRZJFiMHEyAlyreS7aUjUPknZDz6StX.Wkeka8BxopS6um', 'member', NULL),
(9, NULL, 'abcd', NULL, '$2y$10$bqx2yqRgRHBWAA3bhuBEpuB787F6Ahg7ZHyb0sHeFATuMf2c9R70u', 'member', NULL),
(10, NULL, 'coba', NULL, '$2y$10$v/CuOcry0PoqO5EezG6Z5unlZrD/RsSGdHx6r5BYZXXiCx7Bb/APO', 'member', NULL),
(11, NULL, 'bagas', NULL, '$2y$10$YgmakXCjdaL.xj.A232iSOlJzDtdd6p2TZrHlkplnq3cr7P3yBE9K', 'member', NULL),
(14, NULL, 'widipuriarto', 'widipuriarto@gmail.com', '$2y$10$3XYLHXJQKJqZSURs8D/jC.3VevjBp5oQzdOSRqb250eeSX9if9Czq', 'member', NULL),
(15, NULL, 'widipuriarto25', 'widipuriarto25@gmail.com', '$2y$10$BTwhT3WVu.7fsv6Rnthor.Bf7yxR639MOykHDPK0IybBQx0h2mc7e', 'member', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `youtube_url` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `youtube_url`, `created_at`) VALUES
(1, 'Virtual Tour Desa Banjaran', 'https://www.youtube.com/embed/NhLC1qXKYfg', NULL),
(3, 'Wisata Tersembunyi Desa Banjaran', ' https://www.youtube.com/embed/fAzCvpg2Dl8?si=SpQfpxNYFgwnzUIb', NULL),
(5, 'Desa Banjaran yang Istimewa', 'https://www.youtube.com/embed/vzN209tTgk8?si=tuTAtKUAuiLzRbtR', NULL),
(7, 'Profil Desa Wisata Banjaran', 'https://www.youtube.com/embed/sJiO1Z7FD1g?si=R7uSVdJn67F_wm8-', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_history`
--
ALTER TABLE `chat_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket_wisata`
--
ALTER TABLE `paket_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_member_id_foreign` (`member_id`),
  ADD KEY `transaksi_paket_id_foreign` (`paket_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chat_history`
--
ALTER TABLE `chat_history`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `paket_wisata`
--
ALTER TABLE `paket_wisata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`),
  ADD CONSTRAINT `transaksi_paket_id_foreign` FOREIGN KEY (`paket_id`) REFERENCES `paket_wisata` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
