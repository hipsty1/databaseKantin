-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Nov 2024 pada 11.07
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kantin_upn`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(5) NOT NULL,
  `nama_karyawan` varchar(30) DEFAULT NULL,
  `gender_karyawan` varchar(10) DEFAULT NULL,
  `id_owner` int(5) DEFAULT NULL,
  `id_stand` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `gender_karyawan`, `id_owner`, `id_stand`) VALUES
(10001, 'Nova', 'Perempuan', 11111, 1111),
(10002, 'Linda', 'Perempuan', 11111, 1111),
(20001, 'Bisma', 'Laki-Laki', 11112, 1112),
(20002, 'Faba Aliandro', 'Laki-Laki', 11112, 1112),
(30001, 'Bu Sugri', 'Perempuan', 11113, 1113),
(30002, 'Umi', 'Perempuan', 11113, 1113),
(40001, 'Bu Isbani', 'Perempuan', 11114, 1114),
(40002, 'Nur', 'Perempuan', 11114, 1114),
(40003, 'Ning', 'Perempuan', 11114, 1114),
(50001, 'Yuni', 'Perempuan', 11115, 1115);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `nama_menu` varchar(40) DEFAULT NULL,
  `kategori` varchar(10) DEFAULT NULL,
  `harga` int(9) DEFAULT NULL,
  `ketersediaan` varchar(10) DEFAULT NULL,
  `id_karyawan` int(5) DEFAULT NULL,
  `id_stand` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `kategori`, `harga`, `ketersediaan`, `id_karyawan`, `id_stand`) VALUES
(11001, 'Nasi Ayam Penyet', 'Makanan', 13000, 'Tersedia', 10001, 1111),
(11002, 'Nasi Ayam Crispy', 'Makanan', 13000, 'Tersedia', 10001, 1111),
(11003, 'Nasi Lele', 'Makanan', 11000, 'Tersedia', 10001, 1111),
(11004, 'Nasi Telur', 'Makanan', 8000, 'Tersedia', 10001, 1111),
(11005, 'Nasi Tempe Tahu', 'Makanan', 7000, 'Tersedia', 10002, 1111),
(11006, 'Nasi Ati Ampela', 'Makanan', 10000, 'Tersedia', 10001, 1111),
(11007, 'Nasi Kulit', 'Makanan', 12000, 'Tersedia', 10002, 1111),
(11008, 'Nasi Usus', 'Makanan', 12000, 'Tersedia', 10002, 1111),
(11009, 'Nasi Kuniing', 'Makanan', 10000, 'Tersedia', 10002, 1111),
(11010, 'Pempek Ikan', 'Makanan', 10000, 'Tersedia', 10002, 1111),
(11011, 'Batagor', 'Makanan', 8000, 'Tersedia', 10002, 1111),
(11012, 'Indomie Goreng', 'Makanan', 7000, 'Tersedia', 10002, 1111),
(11013, 'Indomie Rebus', 'Makanan', 7000, 'Tersedia', 10002, 1111),
(11014, 'Indomie Telur Goreng ', 'Makanan', 10000, 'Tersedia', 10002, 1111),
(11015, 'Terong', 'Lauk', 3000, 'Tersedia', 10001, 1111),
(11016, 'Kubis', 'Lauk', 3000, 'Tersedia', 10001, 1111),
(11017, 'Tempe', 'Lauk', 1000, 'Tersedia', 10001, 1111),
(11018, 'Tahu', 'Lauk', 1000, 'Tersedia', 10001, 1111),
(11019, 'Telur', 'Lauk', 5000, 'Tersedia', 10001, 1111),
(11020, 'Ceker', 'Lauk', 1000, 'Tersedia', 10001, 1111),
(11021, 'Nasi Putih', 'Makanan', 3000, 'Tersedia', 10002, 1111),
(11022, 'Es Teh', 'Minuman', 3000, 'Tersedia', 10001, 1111),
(11023, 'Teh Hangat', 'Minuman', 3000, 'Tersedia', 10001, 1111),
(11024, 'Es Jeruk', 'Minuman', 3000, 'Tersedia', 10001, 1111),
(11025, 'Jeruk Hangat', 'Minuman', 3000, 'Tersedia', 10001, 1111),
(11026, 'Aneka Kopi', 'Minuman', 4000, 'Tersedia', 10001, 1111),
(11027, 'Aneka Es Kopi', 'Minuman', 4000, 'Tersedia', 10001, 1111),
(11028, 'Aneka Susu', 'Minuman', 6000, 'Tersedia', 10001, 1111),
(11029, 'Aneka Susu Dingin', 'Minuman', 6000, 'Tersedia', 10001, 1111),
(11030, 'Nutrisari', 'Minuman', 3000, 'Tersedia', 10001, 1111),
(11031, 'Jus Buah', 'Minuman', 8000, 'Tersedia', 10001, 1111),
(11032, 'Paket Nasi Ayam + Es teh', 'Makanan', 15000, 'Tersedia', 10001, 1111),
(11033, 'Paket Nasi Lele + Es Teh', 'Makanan', 14000, 'Tersedia', 10001, 1111),
(11034, 'Paket Nasi 3T + Es teh', 'Makanan', 12000, 'Tersedia', 10001, 1111),
(21001, 'Dimsum rame-rame', 'Camilan', 30000, 'Tersedia', 20001, 1112),
(21002, 'Dimsum original', 'Camilan', 15000, 'Tersedia', 20001, 1112),
(21003, 'Dimsum roasted  sasame', 'Camilan', 20000, 'Tersedia', 20001, 1112),
(21004, 'Dimsum keju', 'Camilan', 20000, 'Tersedia', 20001, 1112),
(21005, 'Dimsum mentai', 'Camilan', 20000, 'Tersedia', 20001, 1112),
(21006, 'Dimsum mayo', 'Camilan', 20000, 'Tersedia', 20001, 1112),
(21007, 'Tori katsu chiizu rice', 'Makanan', 23000, 'Tersedia', 20002, 1112),
(21008, 'Tori katsu chiizu mie', 'Makanan', 23000, 'Tersedia', 20002, 1112),
(21009, 'Chicken katsu kari', 'Makanan', 20000, 'Tersedia', 20002, 1112),
(21010, 'Kimchi hot rice beef', 'Makanan', 30000, 'Tersedia', 20002, 1112),
(21011, 'Kimchi hot rice chicken', 'Makanan', 27000, 'Tersedia', 20002, 1112),
(21012, 'Hot mee chicken blackpaper', 'Makanan', 15000, 'Tersedia', 20002, 1112),
(21013, 'Hot mee chicken korean kimchi', 'Makanan', 15000, 'Tersedia', 20002, 1112),
(21014, 'Hot rice cakalang', 'Makanan', 15000, 'Tersedia', 20002, 1112),
(21015, 'Hot rice chicken', 'Makanan', 25000, 'Tersedia', 20002, 1112),
(21016, 'Hot rice beef', 'Makanan', 28000, 'Tersedia', 20002, 1112),
(21017, 'Es teh', 'Minuman', 3000, 'Tersedia', 20001, 1112),
(21018, 'Teh panas', 'Minuman', 2000, 'Tersedia', 20001, 1112),
(31001, 'Nasi Soto Ayam', 'Makanan', 7000, 'Tersedia', 30001, 1113),
(31002, 'Lontong Opor Telur', 'Makanan', 10000, 'Tersedia', 30001, 1113),
(31003, 'Lontong Opor Ayam', 'Makanan', 13000, 'Tersedia', 30001, 1113),
(31004, 'Nasi Rames Telur ', 'Makanan', 11000, 'Tersedia', 30001, 1113),
(31005, 'Nasi Rames UpinIpin (Ayam Paha Bawah)', 'Makanan', 13000, 'Tersedia', 30001, 1113),
(31006, 'Nasi Rames Lele', 'Makanan', 11000, 'Tersedia', 30001, 1113),
(31007, 'Nasi Pecel Telur', 'Makanan', 11000, 'Tersedia', 30001, 1113),
(31008, 'Nasi Pecel UpinIpin (Ayam Paha Bawah)', 'Makanan', 13000, 'Tersedia', 30001, 1113),
(31009, 'Nasi Pecel Lele', 'Makanan', 11000, 'Tersedia', 30001, 1113),
(31010, 'Indomie Goreng', 'Makanan', 6000, 'Tersedia', 30001, 1113),
(31011, 'Indomie Rebus', 'Makanan', 6000, 'Tersedia', 30001, 1113),
(31012, 'Indomie Telur (Goreng)', 'Makanan', 9000, 'Tersedia', 30001, 1113),
(31013, 'Indomie Telur (Rebus)', 'Makanan', 9000, 'Tersedia', 30001, 1113),
(31014, 'Nasi Ayam Penyet (Paha Atas) + Pop Ice', 'Menu Paket', 16000, 'Tersedia', 30002, 1113),
(31015, 'Nasi Ayam Penyet (Paha Bawah) + Pop Ice', 'Menu Paket', 13000, 'Tersedia', 30002, 1113),
(31016, 'Nasi Telur Penyet (Paha Bawah) + Pop Ice', 'Menu Paket', 11000, 'Tersedia', 30002, 1113),
(31017, 'Nasi Lele Penyet + Pop Ice', 'Menu Paket', 11000, 'Tersedia', 30002, 1113),
(31018, 'Nasi Ati Penyet + Pop Ice', 'Menu Paket', 11000, 'Tersedia', 30002, 1113),
(31019, 'Nasi Tahu Tempe + Pop Ice', 'Menu Paket', 8000, 'Tersedia', 30001, 1113),
(31020, 'Es Teh Tawar ', 'Minuman', 2000, 'Tersedia', 30001, 1113),
(31021, 'Teh Tawar Hangat', 'Minuman', 2000, 'Tersedia', 30001, 1113),
(31022, 'Es Teh Manis', 'Minuman', 3000, 'Tersedia', 30001, 1113),
(31023, 'Teh Manis Hangat', 'Minuman', 3000, 'Tersedia', 30001, 1113),
(31024, 'Es Jeruk', 'Minuman', 4000, 'Tersedia', 30001, 1113),
(31025, 'Jeruk Hangat', 'Minuman', 4000, 'Tersedia', 30001, 1113),
(31026, 'Es Lemon Tea', 'Minuman', 4000, 'Tersedia', 30001, 1113),
(31027, 'Lemon Tea Hangat', 'Makanan', 4000, 'Tersedia', 30001, 1113),
(31028, 'Aneka Minuman Saset (Es)', 'Minuman', 4000, 'Tersedia', 30001, 1113),
(31029, 'Aneka Minuman Saset (Hangat)', 'Minuman', 4000, 'Tersedia', 30001, 1113),
(41001, 'Indomie Telur', 'Makanan', 10000, 'Tersedia', 40001, 1114),
(41002, 'Indomie Bakso', 'Makanan', 10000, 'Tersedia', 40001, 1114),
(41003, 'Nasi Rawon', 'Makanan', 16000, 'Tersedia', 40001, 1114),
(41004, 'Nasi Rawon Telur Asin', 'Makanan', 20000, 'Tersedia', 40001, 1114),
(41005, 'Nasi Ayam Geprek', 'Makanan', 12000, 'Tersedia', 40001, 1114),
(41006, 'Nasi Ayam Penyet', 'Makanan', 15000, 'Tersedia', 40001, 1114),
(41007, 'Nasi Goreng', 'Makanan', 12000, 'Tersedia', 40001, 1114),
(41008, 'Nasi Goreng Spesial', 'Makanan', 20000, 'Tersedia', 40001, 1114),
(41009, 'Nasi Goreng Bakso', 'Makanan', 15000, 'Tersedia', 40001, 1114),
(41010, 'Nasi Goreng Sosis', 'Makanan', 15000, 'Tersedia', 40001, 1114),
(41011, 'Ricebowl', 'Makanan', 11000, 'Tersedia', 40001, 1114),
(41012, 'Nasi Sayur', 'Makanan', 8000, 'Tersedia', 40001, 1114),
(41013, 'Nasi Bento', 'Makanan', 12000, 'Tersedia', 40001, 1114),
(41014, 'Mie Ayam Cup', 'Makanan', 7000, 'Tersedia', 40001, 1114),
(41015, 'Soto Ayam', 'Makanan', 8000, 'Tersedia', 40001, 1114),
(41016, 'Bakso', 'Makanan', 12000, 'Tersedia', 40001, 1114),
(41017, 'Es Teh', 'Minuman', 3000, 'Tersedia', 40002, 1114),
(41018, 'Teh Hangat', 'Minuman', 3000, 'Tersedia', 40002, 1114),
(41019, 'Es Jeruk', 'Minuman', 3000, 'Tersedia', 40002, 1114),
(41020, 'Jeruk Hangat', 'Minuman', 3000, 'Tersedia', 40002, 1114),
(41021, 'Es Jeruk Nipis', 'Minuman', 4000, 'Tersedia', 40002, 1114),
(41022, 'Jeruk Nipis Hangat', 'Minuman', 4000, 'Tersedia', 40002, 1114),
(41023, 'Es Lemon Tea', 'Minuman', 5000, 'Tersedia', 40002, 1114),
(41024, 'Lemon Tea Hangat', 'Minuman', 5000, 'Tersedia', 40002, 1114),
(41025, 'Nutrisari', 'Minuman', 4000, 'Tersedia', 40002, 1114),
(41026, 'Good Day', 'Minuman', 4000, 'Tersedia', 40002, 1114),
(41027, 'Es Kopi', 'Minuman', 5000, 'Tersedia', 40002, 1114),
(41028, 'Kopi Panas', 'Minuman', 5000, 'Tersedia', 40002, 1114),
(41029, 'Aneka Jus', 'Minuman', 8000, 'Tersedia', 40002, 1114),
(41030, 'Pop Ice', 'Minuman', 5000, 'Tersedia', 40002, 1114),
(41031, 'Kopi Atu', 'Minuman', 13000, 'Tersedia', 40002, 1114),
(41032, 'Juice Mix', 'Minuman', 10000, 'Tersedia', 40002, 1114),
(41033, 'Es Kuwut', 'Minuman', 5000, 'Tersedia', 40002, 1114),
(41034, 'Ades', 'Minuman', 4000, 'Tersedia', 40002, 1114),
(41035, 'Frestea Apple', 'Minuman', 6000, 'Tersedia', 40002, 1114),
(41036, 'Frestea Apple Kecil', 'Minuman', 5000, 'Tersedia', 40002, 1114),
(41037, 'Frestea Greenhoney', 'Minuman', 6000, 'Tersedia', 40002, 1114),
(41038, 'Frestea Jasmine', 'Minuman', 6000, 'Tersedia', 40002, 1114),
(41039, 'Frestea Jasmine Kecil', 'Minuman', 5000, 'Tersedia', 40002, 1114),
(41040, 'Nutriboost Strawberry', 'Minuman', 7000, 'Tersedia', 40002, 1114),
(41041, 'Nutriboost Orange', 'Minuman', 7000, 'Tersedia', 40002, 1114),
(41042, 'Coca Cola', 'Minuman', 6000, 'Tersedia', 40002, 1114),
(41043, 'Coca Cola Zero', 'Minuman', 4000, 'Tersedia', 40002, 1114),
(41044, 'Fanta Strawberry', 'Minuman', 6000, 'Tersedia', 40002, 1114),
(41045, 'Fanta Orange', 'Minuman', 6000, 'Tersedia', 40002, 1114),
(41046, 'Sprite', 'Minuman', 6000, 'Tersedia', 40002, 1114),
(41047, 'Sprite Zero', 'Minuman', 4000, 'Tersedia', 40002, 1114),
(41048, 'MMP Orange Relaunch', 'Minuman', 5000, 'Tersedia', 40002, 1114),
(41049, 'Sosis Bakar', 'Camilan', 5000, 'Tersedia', 40003, 1114),
(41050, 'Sandwich', 'Camilan', 6500, 'Tersedia', 40003, 1114),
(41051, 'Takoyaki', 'Camilan', 4000, 'Tersedia', 40003, 1114),
(41052, 'Martabak', 'Camilan', 3500, 'Tersedia', 40003, 1114),
(41053, 'Lumpia Sosis Ayam', 'Camilan', 3000, 'Tersedia', 40003, 1114),
(41054, 'Risol Mayonaise', 'Camilan', 3000, 'Tersedia', 40003, 1114),
(41055, 'Bakso Tusuk', 'Camilan', 3500, 'Tersedia', 40003, 1114),
(41056, 'Donat', 'Camilan', 4000, 'Tersedia', 40003, 1114),
(41057, 'Burger', 'Camilan', 10000, 'Tersedia', 40003, 1114),
(41058, 'Sari Kacang Hijau', 'Camilan', 3500, 'Tersedia', 40003, 1114),
(41059, 'Bakso Tusuk Rica', 'Camilan', 3500, 'Tersedia', 40003, 1114),
(41060, 'Roti Tawar Goreng', 'Camilan', 8000, 'Tersedia', 40003, 1114),
(51001, 'Indomie Goreng Kornet', 'Makanan', 10000, 'Tersedia', 50001, 1115),
(51002, 'Indomie Rebus Kornet', 'Makanan', 10000, 'Tersedia', 50001, 1115),
(51003, 'Indomie Goreng Kornet Plus Telur', 'Makanan', 13000, 'Tersedia', 50001, 1115),
(51004, 'Indomie Rebus Kornet Plus Telur', 'Makanan', 13000, 'Tersedia', 50001, 1115),
(51005, 'Indomie Goreng Sosis', 'Makanan', 9000, 'Tersedia', 50001, 1115),
(51006, 'Indomie Rebus Sosis', 'Makanan', 9000, 'Tersedia', 50001, 1115),
(51007, 'Indomie Goreng Spesial', 'Makanan', 15000, 'Tersedia', 50001, 1115),
(51008, 'Indomie Rebus Spesial', 'Makanan', 15000, 'Tersedia', 50001, 1115),
(51009, 'Ayam Geprek Mozarella', 'Makanan', 15000, 'Tersedia', 50001, 1115),
(51010, 'Ayam Geprek Keju', 'Makanan', 14000, 'Tersedia', 50001, 1115),
(51011, 'Indomie Ayam Geprek Keju', 'Makanan', 15000, 'Tersedia', 50001, 1115),
(51012, 'Telur Geprek', 'Makanan', 10000, 'Tersedia', 50001, 1115),
(51013, 'Telur Kornet Geprek', 'Makanan', 13000, 'Tersedia', 50001, 1115),
(51014, 'Soto Ayam', 'Makanan', 12000, 'Tersedia', 50001, 1115),
(51015, 'Bakso', 'Makanan', 12000, 'Tersedia', 50001, 1115),
(51016, 'Paket Bento Beef Yakiniku', 'Menu Paket', 17000, 'Tersedia', 50001, 1115),
(51017, 'Chicken Teriyaki', 'Makanan', 13000, 'Tersedia', 50001, 1115),
(51018, 'Chicken Katsuddon', 'Makanan', 13000, 'Tersedia', 50001, 1115),
(51019, 'Chicken BBQ', 'Makanan', 13000, 'Tersedia', 50001, 1115),
(51020, 'Chicken Black Pepper', 'Makanan', 13000, 'Tersedia', 50001, 1115),
(51021, 'Chicken Soy Honey', 'Makanan', 13000, 'Tersedia', 50001, 1115),
(51022, 'Es Campur Prasmanan', 'Minuman', 8000, 'Tersedia', 50001, 1115),
(51023, 'Es Teh Jumbo', 'Minuman', 3000, 'Tersedia', 50001, 1115),
(51024, 'Es Jeruk Jumbo', 'Minuman', 4000, 'Tersedia', 50001, 1115),
(51025, 'Es Nutrisari', 'Minuman', 4000, 'Tersedia', 50001, 1115),
(51026, 'Es Gooday', 'Minuman', 4000, 'Tersedia', 50001, 1115),
(51027, 'Ice Lychee Tea Tumbo', 'Minuman', 4000, 'Tersedia', 50001, 1115),
(51028, 'Ice Jeruk Jumbo', 'Minuman', 4000, 'Tersedia', 50001, 1115);

-- --------------------------------------------------------

--
-- Struktur dari tabel `owner`
--

CREATE TABLE `owner` (
  `id_owner` int(5) NOT NULL,
  `nama_owner` varchar(30) DEFAULT NULL,
  `gender_owner` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `owner`
--

INSERT INTO `owner` (`id_owner`, `nama_owner`, `gender_owner`) VALUES
(11111, 'Hanifah Putri', 'Perempuan'),
(11112, 'Lukman', 'Laki-laki'),
(11113, 'Anggri', 'Perempuan'),
(11114, 'Bu Santo (FISIP)', 'Perempuan'),
(11115, 'Bu Lilis', 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(5) NOT NULL,
  `nama_pembeli` varchar(30) DEFAULT NULL,
  `alamat_pembeli` varchar(20) DEFAULT NULL,
  `gender_pembeli` varchar(10) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `alamat_pembeli`, `gender_pembeli`, `no_hp`) VALUES
(10001, 'Nurjelita Sukmawati', 'Jl. Bantul', 'P', '088889327472'),
(10002, 'Haerunisa', 'Jl. Wates', 'P', '088889327473'),
(10003, 'Adelia Nurrahmawati', 'Jl. Parangtritis', 'P', '088889327474'),
(10004, 'Anisa Zahida', 'Jl. Kaliurang', 'P', '088889327475'),
(10005, 'Muhammad Restu Firmansyah', 'Jl. Magelang', 'L', '088889327476'),
(10006, 'Muh Ramadhan', 'Jl. Imogiri Barat', 'L', '088889327477'),
(10007, 'Wahyu Fahri Roisya', 'Jl. Godean', 'L', '088889327478'),
(10008, 'Lahar Nuansa Putra', 'Jl. Palagan', 'L', '088889327479'),
(10009, 'Rayhan Syailendra Jilani', 'Jl. Timoho', 'L', '088889327480'),
(10010, 'Fahmi Firdaus', 'Jl. Monjali', 'L', '088889327481'),
(10011, 'Caesar Sabillah Kivasha P', 'Jl. Tamansiswa', 'L', '088889327482'),
(10012, 'Dzaky Muammar', 'Jl. Bantul', 'L', '088889327483'),
(10013, 'Farabian Nabil Alauzi', 'Jl. Wates', 'L', '088889327484'),
(10014, 'Tanti Eka Lestari', 'Jl. Parangtritis', 'P', '088889327485'),
(10015, 'Wildan Rifqi Prambudi', 'Jl. Kaliurang', 'L', '088889327486'),
(10016, 'Yusyfi Akira Arlyn Alzena', 'Jl. Magelang', 'L', '088889327487'),
(10017, 'Arsyadi Indra Hasan Prihambada', 'Jl. Imogiri Barat', 'L', '088889327488'),
(10018, 'Muhammad Arif Hermawan', 'Jl. Godean', 'L', '088889327489'),
(10019, 'Aisyah Yasmine Kirana', 'Jl. Palagan', 'P', '088889327490'),
(10020, 'Waldi Lintang Novianto', 'Jl. Timoho', 'L', '088889327491'),
(10021, 'Hendri Prasetyo', 'Jl. Monjali', 'L', '088889327492'),
(10022, 'Ryan Haqqi Prarista', 'Jl. Tamansiswa', 'L', '088889327493'),
(10023, 'Briliant Priscilla', 'Jl. Bantul', 'P', '088889327494'),
(10024, 'Ananda Rizky Setya Nugroh', 'Jl. Wates', 'L', '088889327495'),
(10025, 'Nabil Priyanka Pasuhuk', 'Jl. Parangtritis', 'L', '088889327496'),
(10026, 'Muhammad Zaki Mahfuzi', 'Jl. Kaliurang', 'L', '088889327497'),
(10027, 'Bintang Ramadhan', 'Jl. Magelang', 'L', '088889327498'),
(10028, 'Selgy Pradista Risqi', 'Jl. Imogiri Barat', 'L', '088889327499'),
(10029, 'Rosandi Syifa Sultoni', 'Jl. Godean', 'L', '088889327500'),
(10030, 'Aurelius Indera Wiejaya', 'Jl. Palagan', 'L', '088889327501'),
(10032, 'Raflin Madani', 'Jl. Monjali', 'L', '088889327503'),
(10033, 'Lilie Breezea Manurung', 'Jl. Tamansiswa', 'P', '088889327504'),
(10034, 'Pande Made Deva Brahmasta', 'Jl. Bantul', 'L', '088889327505'),
(10035, 'Muhammad Daud Akyaz', 'Jl. Wates', 'L', '088889327506'),
(10036, 'Muhammad Zidane Zulfikar', 'Jl. Parangtritis', 'L', '088889327507'),
(10037, 'Nathaniel Slim Reuven', 'Jl. Kaliurang', 'L', '088889327508'),
(10038, 'Shafiq Siqdi Azizi', 'Jl. Magelang', 'L', '088889327509'),
(10039, 'Davi Ergana Kembaren', 'Jl. Imogiri Barat', 'L', '088889327510'),
(10040, 'Rizky Rama Oktavian', 'Jl. Godean', 'L', '088889327511'),
(10041, 'Nailah Hana Nur Aisyah', 'Jl. Palagan', 'P', '088889327512'),
(10042, 'Intan Ramadhani', 'Jl. Timoho', 'P', '088889327513'),
(10043, 'Raihan Buono Putra', 'Jl. Monjali', 'L', '088889327514');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stand_kantin`
--

CREATE TABLE `stand_kantin` (
  `id_stand` int(5) NOT NULL,
  `nama_stand` varchar(30) DEFAULT NULL,
  `jumlah_karyawan` int(2) DEFAULT NULL,
  `id_owner` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stand_kantin`
--

INSERT INTO `stand_kantin` (`id_stand`, `nama_stand`, `jumlah_karyawan`, `id_owner`) VALUES
(1111, 'Dapur Mak\'E - Depok', 2, 11111),
(1112, 'Kentang Kletji', 2, 11112),
(1113, 'Soto Seger Boyolali - Bu Retno', 2, 11113),
(1114, 'Komunitas Kantin Puspita', 3, 11114),
(1115, 'Kantin 21', 1, 11115);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(9) NOT NULL,
  `jumlah` int(5) DEFAULT NULL,
  `total_harga` int(9) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `id_pembeli` int(5) DEFAULT NULL,
  `id_menu` int(5) DEFAULT NULL,
  `id_stand` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `jumlah`, `total_harga`, `tanggal_transaksi`, `id_pembeli`, `id_menu`, `id_stand`) VALUES
(1001, 2, 30000, '2024-11-01', 10017, 51009, 1115),
(1002, 2, 16000, '2024-11-01', 10010, 31019, 1113),
(1003, 2, 24000, '2024-11-01', 10024, 41016, 1115),
(1004, 2, 26000, '2024-11-02', 10021, 51017, 1112),
(1006, 1, NULL, '2024-11-02', 10027, 41050, 1114),
(1007, 1, NULL, '2024-11-03', 10033, 11011, 1113);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `id_owner` (`id_owner`),
  ADD KEY `id_stand` (`id_stand`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `id_stand` (`id_stand`);

--
-- Indeks untuk tabel `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id_owner`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `stand_kantin`
--
ALTER TABLE `stand_kantin`
  ADD PRIMARY KEY (`id_stand`),
  ADD KEY `id_owner` (`id_owner`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pembeli` (`id_pembeli`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_stand` (`id_stand`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`id_owner`) REFERENCES `owner` (`id_owner`),
  ADD CONSTRAINT `karyawan_ibfk_2` FOREIGN KEY (`id_stand`) REFERENCES `stand_kantin` (`id_stand`);

--
-- Ketidakleluasaan untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`),
  ADD CONSTRAINT `menu_ibfk_2` FOREIGN KEY (`id_stand`) REFERENCES `stand_kantin` (`id_stand`);

--
-- Ketidakleluasaan untuk tabel `stand_kantin`
--
ALTER TABLE `stand_kantin`
  ADD CONSTRAINT `stand_kantin_ibfk_1` FOREIGN KEY (`id_owner`) REFERENCES `owner` (`id_owner`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_stand`) REFERENCES `stand_kantin` (`id_stand`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
