-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29 Okt 2019 pada 10.56
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `informaticcenter_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip` varchar(20) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `kontak` varchar(14) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `nama_dosen`, `jenis_kelamin`, `kontak`, `alamat`) VALUES
('195412171986011001', 'Prof Dr Atje Setiawan Abdullah MS M Kom.', 'L', '080000000001', 'Bandung'),
('196001151987011002', 'Ino Suryana Drs M Komp', 'L', '080000000002', 'Bogor'),
('196002121987011001', 'R Sudrajat Drs M Si', 'L', '080000000003', 'Cirebon'),
('196110181986031002', 'Akik Hidayat Drs M Kom', 'L', '080000000004', 'Depok'),
('196207011993021001', 'Dr Setiawan Hadi M Sc CS', 'L', '080000000005', 'Garut'),
('196704031993031002', 'Dr Asep Sholahuddin MT', 'L', '080000000006', 'Jakarta'),
('196807171993031003', 'Dr Juli Rejito M Kom', 'L', '080000000007', 'Kuningan'),
('197006151998031003', 'Akmal S Si MT', 'L', '080000000008', 'Semarang'),
('197309252003121003', 'Deni Setiana S Si M Cs', 'L', '080000000009', 'Sukabumi'),
('197607232008121001', 'Rudi Rosadi S Si M Kom', 'L', '080000000010', 'Surabaya'),
('198203182006041001', 'Erick Paulus S Si M Kom', 'L', '080000000011', 'Bandung'),
('198412112015041002', 'Aditya Pradana S T M Eng', 'L', '080000000012', 'Cirebon'),
('198507042015042003', 'Dr Intan Nurma Yulita M T', 'P', '080000000013', 'Depok'),
('198912302015042001', 'Mira Suryani S Pd M Kom', 'P', '080000000014', 'Garut'),
('198912312015042002', 'Dr Afrida Helen MT', 'P', '080000000015', 'Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_matkul` varchar(14) NOT NULL,
  `nama_matkul` varchar(100) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `waktu` varchar(20) NOT NULL,
  `sks` enum('2','3') NOT NULL,
  `kurikulum` enum('2016','2017') NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `nip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_matkul`, `nama_matkul`, `hari`, `waktu`, `sks`, `kurikulum`, `semester`, `nip`) VALUES
('D10A1201', 'Kalkulus I', 'Senin', '13.00', '3', '2016', '5', '196704031993031002'),
('D10A2201', 'Kalkulus II', 'Senin', '09.00', '3', '2016', '3', '198203182006041001'),
('D10A3201', 'Aljabar Linier', 'Selasa', '09.00', '2', '2016', '3', '196001151987011002'),
('D10A3202', 'Metode Numerik', 'Rabu', '10.00', '2', '2016', '5', '196002121987011001'),
('D10A3203', 'Matematika Diskrit', 'Kamis', '11.00', '3', '2016', '1', '196110181986031002'),
('D10A4201', 'Operasional Riset', 'Jumat', '08.00', '2', '2016', '1', '198203182006041001'),
('D10E2201', 'Statistika', 'Rabu', '11.00', '2', '2016', '1', '198507042015042003'),
('D10G1201', 'Logika Informatika', 'Selasa', '14.00', '3', '2016', '1', '196807171993031003'),
('D10G1202', 'Algoritma dan Pemrograman', 'Rabu', '15.00', '3', '2016', '3', '197006151998031003'),
('D10G1203', 'Pengantar Teknologi Komputer dan Informatika', 'Jumat', '12.00', '3', '2016', '3', '196207011993021001'),
('D10G2201', 'Struktur Data', 'Kamis', '12.00', '3', '2016', '3', '198912302015042001'),
('D10G2202', 'Arsitektur dan Organisasi Komputer', 'Jumat', '13.00', '3', '2016', '5', '198912312015042002'),
('D10G2203', 'Sistem Database I', 'Senin', '08.00', '2', '2016', '1', '195412171986011001'),
('D10G3201', 'Sistem Operasi', 'Jumat', '12.00', '3', '2016', '3', '196807171993031003'),
('D10G3202', 'Pemrograman Web', 'Senin', '13.00', '3', '2016', '5', '197006151998031003'),
('D10G3203', 'Pemrograman Berorientasi Objek', 'Selasa', '14.00', '3', '2016', '1', '197309252003121003'),
('D10G3204', 'Sistem Database II', 'Rabu', '15.00', '3', '2016', '3', '196807171993031003'),
('D10G32B1', 'Decision Support Systems', 'Senin', '13.00', '3', '2017', '5', '197006151998031003'),
('D10G4201', 'Artificial Intelligence', 'Senin', '09.00', '3', '2016', '3', '198412112015041002'),
('D10G4202', 'Jaringan Komputer', 'Selasa', '10.00', '3', '2016', '5', '198507042015042003'),
('D10G4203', 'Sistem Informasi', 'Rabu', '11.00', '2', '2016', '1', '198912302015042001'),
('D10G4204', 'Kecakapan Antar Personal', 'Kamis', '12.00', '3', '2016', '3', '198912312015042002'),
('D10G4205', 'Analisis Algoritma', 'Jumat', '13.00', '3', '2016', '5', '198912312015042002'),
('D10G4206', 'Etika Profesi', 'Senin', '08.00', '2', '2017', '1', '195412171986011001'),
('D10G5201', 'Telematika', 'Selasa', '09.00', '2', '2017', '3', '196001151987011002'),
('D10G5202', 'Enterpreneurship', 'Rabu', '10.00', '2', '2017', '5', '196002121987011001'),
('D10G5204', 'Rekayasa Perangkat Lunak', 'Kamis', '11.00', '3', '2017', '1', '196110181986031002'),
('D10G52A1', 'Pemodelan dan Simulasi', 'Jumat', '13.00', '3', '2017', '5', '198912312015042002'),
('D10G52A2', 'Analisis Numerik', 'Senin', '08.00', '2', '2017', '1', '195412171986011001'),
('D10G52B2', 'Kriptografi', 'Selasa', '14.00', '3', '2017', '1', '197309252003121003'),
('D10G52C1', 'Grafika Komputer', 'Selasa', '10.00', '3', '2017', '5', '198507042015042003'),
('D10G52C2', 'Robotika', 'Rabu', '11.00', '2', '2017', '1', '198912302015042001'),
('D10G52D1', 'Sistem Keamanan Jaringan', 'Rabu', '10.00', '2', '2017', '5', '196002121987011001'),
('D10G52D2', 'Sistem Terdistribusi', 'Kamis', '11.00', '3', '2017', '1', '196110181986031002'),
('D10G6201', 'Interaksi Manusia dan Komputer', 'Jumat', '12.00', '3', '2017', '3', '196807171993031003'),
('D10G6202', 'Teori Bahasa dan Automata', 'Senin', '13.00.00', '3', '2017', '5', '197006151998031003'),
('D10G6203', 'Project Perangkat Lunak I', 'Selasa', '14.00', '3', '2017', '1', '197309252003121003'),
('D10G6204', 'Data Warehouse', 'Rabu', '15.00', '3', '2017', '3', '197607232008121001'),
('D10G62A1', 'Persamaan Diferrensial', 'Selasa', '09.00', '2', '2017', '3', '196001151987011002'),
('D10G62A2', 'Optimization Problems', 'Rabu', '10.00', '2', '2017', '5', '196002121987011001'),
('D10G62B1', 'Sistem Informasi Multimedia', 'Rabu', '15.00', '3', '2017', '3', '197607232008121001'),
('D10G62B2', 'Semantik Web', 'Kamis', '16.00', '2', '2017', '5', '196807171993031003'),
('D10G62C1', 'Pengolahan dan Analisis Citra Digital', 'Kamis', '12.00', '3', '2017', '3', '198912312015042002'),
('D10G62C2', 'Soft Computing', 'Jumat', '13.00', '3', '2017', '5', '198912312015042002'),
('D10G62D1', 'Manajemen Jaringan', 'Jumat', '12.00', '3', '2017', '3', '196807171993031003'),
('D10G62D2', 'Mobile Computing', 'Senin', '13.00.00', '3', '2017', '5', '197006151998031003'),
('D10G7201', 'Data Mining', 'Kamis', '16.00', '2', '2017', '5', '196807171993031003'),
('D10G7202', 'Proyek Perangkat Lunak II', 'Jumat', '08.00', '2', '2017', '1', '198203182006041001'),
('D10G7203', 'Manajemen Proyek', 'Senin', '09.00', '3', '2017', '3', '198412112015041002'),
('D10G72A1', 'Kapita Selekta IKMN', 'Kamis', '11.00', '3', '2017', '1', '196110181986031002'),
('D10G72A2', 'High Performance Computing', 'Jumat', '12.00', '3', '2017', '3', '196807171993031003'),
('D10G72B1', 'Kapita Selekta SISM', 'Jumat', '08.00', '2', '2017', '1', '198203182006041001'),
('D10G72B2', 'Sistem Informasi Geografi', 'Senin', '09.00', '3', '2017', '3', '198412112015041002'),
('D10G72C1', 'Kapita Selekta SCSG', 'Senin', '08.00', '2', '2017', '1', '195412171986011001'),
('D10G72C2', 'Machine Learning', 'Selasa', '09.00', '2', '2017', '3', '196001151987011002'),
('D10G72D1', 'Kapita Selekta JKKD', 'Selasa', '14.00', '3', '2017', '1', '197309252003121003'),
('D10G72D2', 'Jaringan Komputer Lanjut', 'Rabu', '15.00', '3', '2017', '3', '197607232008121001'),
('D10H2201', 'Fisika Informatika', 'Selasa', '10.00', '3', '2016', '5', '198412112015041002'),
('UNX101001', 'Agama', 'Senin', '08.00', '2', '2016', '1', '195412171986011001'),
('UNX101002', 'Pancasila', 'Selasa', '09.00', '2', '2016', '3', '196001151987011002'),
('UNX101004', 'Bahasa Indonesia', 'Rabu', '10.00', '2', '2016', '5', '196002121987011001'),
('UNX101007', 'Olah Raga Kebugaran dan Kreativitas', 'Kamis', '11.00', '3', '2016', '1', '196110181986031002'),
('UNX102001', 'Bahasa Inggris I', 'Kamis', '16.00', '2', '2016', '5', '197309252003121003'),
('UNX102002', 'Kewarganegaraan', 'Jumat', '08.00', '2', '2016', '1', '197607232008121001'),
('UNX104001', 'Bahasa Inggris II', 'Kamis', '16.00', '2', '2016', '5', '196807171993031003'),
('UNX107001', 'KKN – Magang', 'Selasa', '10.00', '3', '2017', '5', '198507042015042003'),
('UNX108001', 'Seminar', 'Rabu', '11.00', '2', '2017', '1', '198912302015042001'),
('UNX108002', 'Tugas Akhir', 'Kamis', '12.00', '3', '2017', '3', '198912312015042002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(14) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `kontak` varchar(14) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `id_matkul` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama_mahasiswa`, `semester`, `jenis_kelamin`, `kontak`, `alamat`, `id_matkul`) VALUES
('140810180001', 'Sheila Azhar Almufarida', '1', 'P', '081111111101', 'Bandung', 'UNX101001'),
('140810180002', 'Sitti Ufairoh Azzahra', '3', 'P', '081111111102', 'Bogor', 'UNX101002'),
('140810180003', 'Irfan Satrio Nugroho', '5', 'L', '081111111102', 'Cirebon', 'UNX101004'),
('140810180004', 'Natasya Rizky Maharani', '1', 'P', '081111111104', 'Depok', 'UNX101007'),
('140810180005', 'Fauzan Akmal Hariz', '3', 'L', '081111111105', 'Garut', 'D10G1203'),
('140810180006', 'Anugerah Prima Bagaskara', '5', 'L', '081111111106', 'Jakarta', 'D10A1201'),
('140810180007', 'Putri Nabila', '1', 'P', '081111111107', 'Kuningan', 'D10G1201'),
('140810180008', 'Prayudha Adhitia Libramawan', '3', 'L', '081111111108', 'Semarang', 'D10G1202'),
('140810180009', 'Naufal Ariful Amri', '5', 'L', '081111111109', 'Sukabumi', 'UNX102001'),
('140810180010', 'Alvina Vania Kirana', '1', 'L', '081111111110', 'Surabaya', 'UNX102002'),
('140810180011', 'Alfari Sidnan Ghilmana', '3', 'L', '081111111111', 'Bandung', 'D10A2201'),
('140810180012', 'Hana Meilina Fauziah', '5', 'P', '081111111112', 'Bogor', 'D10H2201'),
('140810180013', 'Alvin', '5', 'L', '081111111113', 'Cirebon', 'D10G2202'),
('140810180014', 'Shania Salsabila', '3', 'P', '081111111114', 'Depok', 'D10G2201'),
('140810180015', 'Meira Dwiana Anjani', '5', 'P', '081111111115', 'Garut', 'D10G2202'),
('140810180016', 'Bunga Azizha Nurhaliza', '1', 'P', '081111111116', 'Jakarta', 'D10G2203'),
('140810180017', 'Sina Mustopa', '3', 'L', '081111111117', 'Kuningan', 'D10A3201'),
('140810180018', 'Muhamad Ilham Habib', '5', 'L', '081111111118', 'Semarang', 'D10A3202'),
('140810180020', 'Muhammad Iqbal Alif Fadilla', '3', 'L', '081111111120', 'Surabaya', 'D10G3201'),
('140810180021', 'Sarah Navianti', '5', 'P', '081111111121', 'Bandung', 'D10G3202'),
('140810180022', 'Sharashena Chairani', '1', 'P', '081111111122', 'Bogor', 'D10G3203'),
('140810180023', 'Ahmad Faaiz Al-Auzai', '3', 'L', '081111111123', 'Cirebon', 'D10G3204'),
('140810180024', 'Muhammad Razzaaq Fadilah', '5', 'L', '081111111124', 'Depok', 'UNX104001'),
('140810180025', 'Bandana Irmal Abdillah', '1', 'L', '081111111125', 'Garut', 'D10A4201'),
('140810180026', 'Delanika Olympiani Trieswari Caesarini', '3', 'P', '081111111126', 'Jakarta', 'D10G4201'),
('140810180027', 'Muhamad Fahrul Azimi', '5', 'L', '081111111127', 'Kuningan', 'D10G4202'),
('140810180028', 'Kefilino Khalifa Filardi', '1', 'L', '081111111128', 'Semarang', 'D10G4203'),
('140810180029', 'Asep Budiyana Muharam', '3', 'L', '081111111129', 'Sukabumi', 'D10G4204'),
('140810180030', 'Rio Sapta Samudera', '5', 'L', '081111111130', 'Surabaya', 'D10G4205'),
('140810180031', 'Tyko Zidane Badhawi', '1', 'L', '081111111131', 'Bandung', 'D10G4206'),
('140810180032', 'Okka Riswana', '3', 'L', '081111111132', 'Bogor', 'D10G5201'),
('140810180033', 'Muhamad Farid Ridho Rambe', '5', 'L', '081111111133', 'Cirebon', 'D10G5202'),
('140810180034', 'Ahmad Irfan Fadholi', '1', 'L', '081111111134', 'Depok', 'D10G5204'),
('140810180035', 'Hanif Dwi Prasetiyo', '3', 'L', '081111111135', 'Garut', 'D10G6201'),
('140810180037', 'Nazmi Muhammad Abkary', '1', 'L', '081111111137', 'Kuningan', 'D10G6203'),
('140810180038', 'Suriadi Vajrakaruna', '3', 'L', '081111111138', 'Semarang', 'D10G6204'),
('140810180039', 'Muhammad Daffa Alfarizqi', '5', 'L', '081111111139', 'Sukabumi', 'D10G7201'),
('140810180040', 'Nurul Ma Arif', '1', 'L', '081111111140', 'Surabaya', 'D10G7202'),
('140810180041', 'Fadlan Mulya Priatna', '3', 'L', '081111111141', 'Bandung', 'D10G7203'),
('140810180042', 'Hadiza Cahya Firdaus', '5', 'L', '081111111142', 'Bogor', 'UNX107001'),
('140810180043', 'Ahmad Egy Aranda', '1', 'L', '081111111143', 'Cirebon', 'UNX108001'),
('140810180044', 'Fauzan Naufal Taufiqulhakim', '3', 'L', '081111111144', 'Depok', 'UNX108002'),
('140810180045', 'Daniel Rama Hiskia', '5', 'L', '081111111145', 'Garut', 'D10G52A1'),
('140810180046', 'Kevin Dyandradiva', '1', 'L', '081111111146', 'Jakarta', 'D10G52A2'),
('140810180048', 'Nadhifal Abdurrahman Rendusara', '5', 'L', '081111111148', 'Semarang', 'D10G62A2'),
('140810180049', 'Rizky Anugerah', '1', 'L', '081111111149', 'Sukabumi', 'D10G72A1'),
('140810180050', 'Archi Cantona Rusanggara', '3', 'L', '081111111150', 'Surabaya', 'D10G72A2'),
('140810180051', 'Rahma Batari', '5', 'P', '081111111151', 'Bandung', 'D10G32B1'),
('140810180052', 'Shalvina Zahwa Aulia', '1', 'P', '081111111152', 'Bogor', 'D10G52B2'),
('140810180053', 'Dzikri Algiffari', '3', 'L', '081111111153', 'Cirebon', 'D10G62B1'),
('140810180054', 'Aithra Junia Bouty', '5', 'P', '081111111154', 'Depok', 'D10G62B2'),
('140810180055', 'Alfian Fadhil Labib', '1', 'L', '081111111155', 'Garut', 'D10G72B1'),
('140810180056', 'Jonathan Rafma Nanda', '3', 'L', '081111111156', 'Jakarta', 'D10G72B2'),
('140810180057', 'Difa Bagasputra Maulana', '5', 'L', '081111111157', 'Kuningan', 'D10G52C1'),
('140810180058', 'Salma Alifia Shafira', '1', 'P', '081111111158', 'Semarang', 'D10G52C2'),
('140810180059', 'Anne Audistya Fernanda', '3', 'P', '081111111159', 'Sukabumi', 'D10G62C1'),
('140810180060', 'Muhammad Reza Atthariq Kori', '5', 'L', '081111111160', 'Surabaya', 'D10G62C2'),
('140810180061', 'Hafidh Akhdan Najib', '1', 'L', '081111111161', 'Bandung', 'D10G72C1'),
('140810180062', 'Muhammad Faisal Putra Safrizal', '3', 'L', '081111111162', 'Bogor', 'D10G72C2'),
('140810180063', 'Aprischa Nauva Miliantari', '5', 'P', '081111111163', 'Cirebon', 'D10G52D1'),
('140810180064', 'Muhammad Zulfikar Ali', '1', 'L', '081111111164', 'Depok', 'D10G52D2'),
('140810180065', 'Delvian Ikhsan Maulana', '3', 'L', '081111111165', 'Garut', 'D10G62D1'),
('140810180066', 'Muhammad Risqullah Sudanta Gorau', '5', 'L', '081111111166', 'Jakarta', 'D10G62D2'),
('140810180068', 'Gede Bagus Darmagita', '3', 'L', '081111111168', 'Semarang', 'D10G72D2'),
('140810180069', 'Falah Rizqi Abdullah Fairuz', '5', 'L', '081111111169', 'Sukabumi', 'UNX102001'),
('140810180072', 'Dimas Ramadhan Pradipta Bagaskara', '5', 'L', '081111111172', 'Bogor', 'D10H2201'),
('140810180073', 'Raissa Amini', '1', 'P', '081111111173', 'Cirebon', 'D10E2201'),
('140810180074', 'Naufal Aulia Kamal Nugraha', '3', 'L', '081111111174', 'Depok', 'D10G2201'),
('140810180075', 'Mohammad Dhikri', '5', 'L', '081111111175', 'Garut', 'D10G2202');

-- --------------------------------------------------------

--
-- Stand-in structure for view `mahasiswa_sem3`
--
CREATE TABLE `mahasiswa_sem3` (
`npm` varchar(14)
,`nama_mahasiswa` varchar(100)
,`jenis_kelamin` enum('L','P')
,`kontak` varchar(14)
,`alamat` varchar(200)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`) VALUES
(1, 'Fauzan Akmal Hariz', 'fauzan.akmal@mail.unpad.ac.id', 'fauzan', 'fauzan'),
(2, 'Alvin', 'alvin18001@mail.unpad.ac.id', 'alvin', 'alvin'),
(3, 'Rizky Anugerah', 'rizkyanugerah@mail.unpad.ac.id', 'anu', 'anu');

-- --------------------------------------------------------

--
-- Struktur untuk view `mahasiswa_sem3`
--
DROP TABLE IF EXISTS `mahasiswa_sem3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mahasiswa_sem3`  AS  select `mahasiswa`.`npm` AS `npm`,`mahasiswa`.`nama_mahasiswa` AS `nama_mahasiswa`,`mahasiswa`.`jenis_kelamin` AS `jenis_kelamin`,`mahasiswa`.`kontak` AS `kontak`,`mahasiswa`.`alamat` AS `alamat` from `mahasiswa` where (`mahasiswa`.`semester` = '3') ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_matkul`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`),
  ADD KEY `id_matkul` (`id_matkul`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_matkul`) REFERENCES `jadwal` (`id_matkul`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
