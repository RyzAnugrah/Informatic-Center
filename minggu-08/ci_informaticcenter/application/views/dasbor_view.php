<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
<?php
// Proteksi halaman
$this->simple_login->cek_login();
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="icon" type="image/logo_title" href="assets\images\logo_title.png">
<title><?php echo $title ?></title>

<link href="assets/css/style2.css" rel="stylesheet">
<style>
table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 200%;
}

th, td {
  padding: 15px;
}
.word { word-spacing: 5px; } 
</style>
</head>

<body>
<section class="container">


<header>Hai 
    <?php echo ucfirst($this->session->userdata('username')); ?>
    </a> | <a href="<?php echo base_url('login/logout') ?>" title="Logout">Logout</a></header>
    <!-- Start Nav -->
    <nav>
    	<ul>
        	<li ><a class="activebar"  href="<?php echo base_url('dasbor') ?>">Home</a></li>
            <li><a href="<?php echo base_url('mahasiswa2019') ?>">Data Mahasiswa</a></li>
			<li><a href="<?php echo base_url('dosen') ?>">Data Dosen</a></li>
			<li><a href="<?php echo base_url('jadwal') ?>">Jadwal Kuliah</a></li>
			<li><a href="<?php echo base_url('download') ?>">Download </a></li>
 
        </ul>
    </nav>
<html lang="en">

<head>
	
	<title>Informatic center</title>
	
	
</head>


	<body>
	<div align="center">
<h1> Welcome to Informatic Center<h1>
<h2> Pusat layanan informasi dari Program Studi Teknik Informatika Universitas Padjadjaran<h2>	
</div>
<br>
<br>

<div align="center">
<img src="assets\images\fauzan.png" height="200" width="200">
<img src="assets\images\alvin.png" height="200" width="200">
<img src="assets\images\anu.png" height="200" width="200">
</div>


<div align="center" >
Fauzan Akmal Hariz
Alvin
Rizky Anugerah
</div>

			<?php echo $this->session->flashdata('message'); ?>
			
			
    <!-- Start Footer -->
    <div class="clearfix"></div>
    <footer>Web design by Alvin, Fauzan dan Rizky</a></footer>
</section>

</html>

</body>

</html>