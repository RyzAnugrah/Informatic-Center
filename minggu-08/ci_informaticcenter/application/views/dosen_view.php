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
<link rel="icon" type="image/logo_title" href="assets\images\logo_title.png">
<meta charset="utf-8">
<title><?php echo $title ?></title>

<link href="assets/css/style2.css" rel="stylesheet">
<style>
table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 15px;
}
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
        	<li><a href="<?php echo base_url('dasbor') ?>">Home</a></li>
            <li><a href="<?php echo base_url('mahasiswa2019') ?>">Data Mahasiswa</a></li>
			<li><a href="<?php echo base_url('dosen') ?>">Data Dosen</a></li>
			<li><a href="<?php echo base_url('jadwal') ?>">Jadwal Kuliah</a></li>
			<li><a href="<?php echo base_url('download') ?>">Download</a> </li>
 
        </ul>
    </nav>
<html lang="en">

<head>
	
	<title>Informatic center</title>
	
	
</head>


		

			<?php echo $this->session->flashdata('message'); ?>
			
			
			
			<form method="get">
				<label>Cari :</label>
				<input type="text" name="cari">
				<input type="submit" value="Cari">
			</form>
 
			<?php 
				if(isset($_GET['cari'])){
				$cari = $_GET['cari'];
				echo "<b>Hasil pencarian : ".$cari."</b>";
				}
			?>
			<table >
				
					<tr>
							<td style="width: auto; text-align: center">NO</td>
							<td style="width: auto; text-align: center">NIP </td>
							<td style="width: auto; text-align: center">NAMA MAHASISWA </td>
							<td style="width: auto; text-align: center">JENIS KELAMIN </td>
							<td style="width: auto; text-align: center">KONTAK </td>
							<td style="width: auto; text-align: center">ALAMAT </td>
							
					</tr>
				

				<tbody>
				<?php 
	if(isset($_GET['cari'])){
		$cari = $_GET['cari'];
		
	}
					 $no = 1;
					foreach ($dosen as $user) {
						?>

						<tr>
							<td style="width: auto; text-align: center"><?= $no++ ?></td>
							<td style="width: auto; text-align: center"><?= $user->nip?></td>
							<td style="width: auto; text-align: center"><?= $user->nama_dosen?></td>
							<td style="width: auto; text-align: center"><?= $user->jenis_kelamin ?></td>
							<td style="width: auto; text-align: center"><?= $user->kontak ?></td>
							<td style="width: auto; text-align: center"><?= $user->alamat ?></td>
						
								
						</tr>

					<?php } ?>

				</tbody>
			</table>
		</div>
		
		
	</div>
	</article>
    <!-- Start Footer -->
    <div class="clearfix"></div>
    <footer>Web design by Alvin, Fauzan dan Rizky</a></footer>
</section>

</html>

</body>

</html>