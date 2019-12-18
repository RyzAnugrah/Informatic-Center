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
		<link href="assets/css/download2.css" rel="stylesheet">
	</head>

	<body>
		<section class="container">

		<header>Hai 
			<?php echo ucfirst($this->session->userdata('username')); ?>
			</a> | <a href="<?php echo base_url('login/logout') ?>" title="Logout">Logout</a></header>
			
			<!-- Start Nav -->
			<nav>
				<ul>
					<li><a href="<?php echo base_url('dasbor') ?>">Home</a></li>
					<li><a href="<?php echo base_url('mahasiswa2019') ?>">Data Mahasiswa</a></li>
					<li><a href="<?php echo base_url('dosen') ?>">Data Dosen</a></li>
					<li><a href="<?php echo base_url('jadwal') ?>">Jadwal Kuliah</a></li>
					<li><a href="<?php echo base_url('download') ?>">Download </a></li>
				</ul>
			</nav>
		<html lang="en">

	<body>
	
	<!-- Section Grid Menu -->
	<section class="grid-menu" class="container">
		<!-- semester1 -->
		<div class="semesterkuning">
			<div>
				<img src="assets\images\angka1.png">
			</div>
			<div class="semesterkuning_desc">
				<h3>Materi Semester 1</h3>
				<a href="https://drive.google.com/drive/folders/1k6zcjaIM8YalFVEHR6lOBPa4SoiK4AQv?usp=sharing" target="output"><button type="submit" class="submit1" value="semester1">Link Download</button></a>
			</div>
		</div>
		
		<!-- semester2 -->
		<div class="semesterabu">
			<div>
				<img src="assets\images\angka2.png">
			</div>
			<div class="semesterabu_desc">
				<h3>Materi Semester 2</h3>
				<a href="https://drive.google.com/drive/folders/1nQoEeSm-Qf6BfwUbvPngUpCSy_k4__4s?usp=sharing" target="output"><button type="submit" class="submit2" value="semester2">Link Download</button></a>
			</div>
		</div>

		<!-- semester3 -->
		<div class="semesterkuning">
			<div>
				<img src="assets\images\angka3.png">
			</div>
			<div class="semesterkuning_desc">
				<h3>Materi Semester 3</h3>
				<a href="https://drive.google.com/drive/folders/1mMjwIXLPuXSreghWQPmF2orsCy-a0u2h?usp=sharing" target="output"><button type="submit" class="submit3" value="semester3">Link Download</button></a>
			</div>
		</div>

		<!-- semester4 -->
		<div class="semesterabu">
			<div>
				<img src="assets\images\angka4.png">
			</div>
			<div class="semesterabu_desc">
				<h3>Materi Semester 4</h3>
				<a href="https://drive.google.com/drive/folders/122ttFJ5J2gj7ICmquBOy-3GtGTqeRcBB?usp=sharing" target="output"><button type="submit" class="submit4" value="semester4">Link Download</button></a>
			</div>
		</div>

		<!-- semester5 -->
		<div class="semesterabu">
			<div>
				<img src="assets\images\angka5.png">
			</div>
			<div class="semesterabu_desc">
				<h3>Materi Semester 5</h3>
				<a href="https://drive.google.com/drive/folders/1DdN8XXdcAmKCG9NCqlOKpCobinw-MFlK?usp=sharing" target="output"><button type="submit" class="submit5" value="semester5">Link Download</button></a>
			</div>
		</div>

		<!-- semester6 -->
		<div class="semesterkuning">
			<div>
				<img src="assets\images\angka6.png">
			</div>
			<div class="semesterkuning_desc">
				<h3>Materi Semester 6</h3>
				<a href="https://drive.google.com/drive/folders/172rRDgFHW4DXC81ETLsEJ25mv_3z-XX_?usp=sharing" target="output"><button type="submit" class="submit6" value="semester6">Link Download</button></a>
			</div>
		</div>

		<!-- semester7 -->
		<div class="semesterabu">
			<div>
				<img src="assets\images\angka7.png">
			</div>
			<div class="semesterabu_desc">
				<h3>Materi Semester 7</h3>
				<a href="https://drive.google.com/drive/folders/15ml9JQ1NNKzD7QIjYKR5fFNRmCFDJWB9?usp=sharing" target="output"><button type="submit" class="submit7" value="semester7">Link Download</button></a>
			</div>
		</div>

		<!-- semester8 -->
		<div class="semesterkuning">
			<div>
				<img src="assets\images\angka8.png">
			</div>
			<div class="semesterkuning_desc">
				<h3>Materi Semester 8</h3>
				<a href="https://drive.google.com/drive/folders/1s5jadWxgdlM4eaX6P480MZuBXvxXlt__?usp=sharing" target="output"><button type="submit" class="submit6" value="semester8">Link Download</button></a>
			</div>
		</div>
		
	</section>
			
    <!-- Start Footer -->
    <div class="clearfix"></div>
    <footer>Web design by Alvin, Fauzan dan Rizky</a></footer>
</section>

</html>

</body>

</html>