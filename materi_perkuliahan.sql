-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Nov 2020 pada 01.25
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `materi_perkuliahan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` varchar(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `harga`, `berat`, `stok`, `deskripsi`, `created_at`, `updated_at`) VALUES
(6, 'HOODIE BART SIMPSON JUMPER UNISEX M-XXL PRIA DAN WANITA - M, Hitam', 89900, 550, 2, 'Deskripsi HOODIE BART SIMPSON JUMPER UNISEX M-XXL PRIA DAN WANITA - M, Hitam\r\n\r\nDeskripsi\r\nMaterial : Cotton Fleece (Tebal nyaman dipakai dan tidak panas. Karena bagian dalam berbulu sehingga sangat nyaman dipakai)\r\nUntuk Pria dan Wanita (Unisex), jadi jangan takut jika model yang dibeli tidak cocok dipakai :)\r\n\r\nTersedia 4 ukuran : Panjang x Lebar ( P x L ) dalam centimeter\r\n	M : 65 cm x 50 cm\r\n	L : 68 cm x 53 cm\r\n	XL: 72 cm x 56 cm\r\n	XXL : 75 cm x 59 cm\r\nSelisih volume -+ 1cm per ukuran\r\n* Jangan lupa untuk mencantumkan ukuran sebelum order. Tidak mencamtumkan keterangan ukuran akan kami kirim ukuran RANDOM\r\n\r\n*Always Ready Stock!! (jadi tidak perlu ragu untuk memesan)\r\n*Jadwal Pengiriman : Senin - Jumat sampai jam 13:00\r\n                                       Sabtu              sampai jam 12:30\r\nGo Grab it cause its Worth It!!!!!', '2020-11-15 10:44:25', '2020-11-16 12:02:04'),
(7, 'HOODIE OFFWHITE GRADIENT WHITE PREMIUM HOODIE PRIA HYPE BRANDED MURAH', 450000, 400, 4, 'Deskripsi HOODIE OFFWHITE GRADIENT WHITE PREMIUM HOODIE PRIA HYPE BRANDED MURAH\r\n\r\nHOODIE OFFWHITE GRADIENT WHITE PREMIUM GRADE 1:1\r\n+ (Hantage , Label, Tag +)\r\n••••••••••••••••••••••••••••••••\r\nPrice : 450K\r\n\r\nHoodie size chart\r\nS. : P 68 x L 56\r\nM : P 70 x L 58\r\nL : P 72 x L 60\r\nXL : P 74 x L 62\r\n••••••••••••••••••••••••••••••', '2020-11-15 11:39:05', '2020-11-16 12:03:08'),
(8, '17SEVEN SWEATER HOODIE JUMPER PRIA 0078 POWERBLACK - L', 199000, 450, 22, 'Deskripsi 17SEVEN SWEATER HOODIE JUMPER PRIA 0078 POWERBLACK - L\r\n\r\n*SPESIFIKASI : \r\n- Bahan Fleace\r\n- Nyaman Dipakai\r\n- Bahan Lembut\r\n- Pilihan Size S-M-L-XL\r\n- Model Memakai Ukuran L\r\n- Tinggi badan model 184cm\r\n- Jika Ada kehabisan stok kami akan konfirmasi kembali.\r\n- Warna bahan Navy\r\n- Sablon\r\n\r\n*Size Chart :\r\n- Panjang x Lebar\r\n- S (64.5cm x 54.5cm)\r\n- M (67.5cm x 56.5cm)\r\n- L (71cm x 58.5cm)\r\n- XL (72cm x 59.5cm)', '2020-11-15 12:11:36', '2020-11-16 12:04:33'),
(10, '\"MAMBA MENTALITY\" KOBE BRYANT HOODIE by WARP LACES - S', 325000, 300, 28, 'Deskripsi \"MAMBA MENTALITY\" KOBE BRYANT HOODIE by WARP LACES - S\r\n\r\nBAHAN : FLEECE COTTON REACTIVE \r\nSABLON PLASTICHARGE \r\n\r\nSIZE CHART \r\nS (54 X 70)\r\nM (56 X 72)\r\nL (58 X 74)\r\nXL (60 X 76)\r\n\r\nFREE STICKER, PUZZLE, AND MANY MORE', '2020-11-16 09:30:01', '2020-11-16 12:06:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `remember_token` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tiana', 'tiana', 'tiana@gmail.com', '$2y$10$id.M0xH6Ppku5wZ1HMZ2BOTIMNbGvSU47Q5GnOfBOcGcs5SuEznMG', NULL, '2020-11-17 17:10:40', '2020-11-17 17:10:40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
