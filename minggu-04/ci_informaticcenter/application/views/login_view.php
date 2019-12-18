<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link href="<?php echo base_url() ?>assets/images/logo-javawebmedia.png" rel="shortcut icon">
<title><?php echo $title ?></title>
<link href="<?php echo base_url() ?>assets/css/style2.css" rel="stylesheet">
<script>
	window.alert("Selamat Datang di Web Alvin, Fauzan, dan Rizky");
</script>
</head>

<body>
<section class="login">
	<h1>Sign In</h1>
    
     <?php
	 // Cetak session
	if($this->session->flashdata('sukses')) {
		echo '<p class="warning" style="margin: 10px 20px;">'.$this->session->flashdata('sukses').'</p>';
	}
	// Cetak error
	echo validation_errors('<p class="warning" style="margin: 10px 20px;">','</p>');
	?>
    
    <form action="<?php echo base_url('login') ?>" method="post">
      <p>
        <label for="username">Username</label>
        <input type="text" name="username" id="username" placeholder="Please Input Your Username!">
        
      </p>
      <p>
        <label for="password">Password</label>
        <input type="password" name="password" id="password" placeholder="Please Input Your Password!">
      </p>
      <p>
        <input type="submit" name="submit" id="submit" value="Submit" class="full">
      </p>
    </form>
    <footer>Web design by Alvin, Fauzan dan Rizky</footer>
</section>
</body>
</html>
