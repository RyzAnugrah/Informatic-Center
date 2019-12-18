<!-- Start Header -->
	<header>Hai 
    <?php echo ucfirst($this->session->userdata('username')); ?>
    </a> | <a href="<?php echo base_url('login/logout') ?>" title="Logout">Logout</a></header>
    <!-- Start Nav -->
    <nav>
    	<ul>
        	<li><a href="<?php echo base_url('dasbor') ?>">Dasbor</a></li>
            <li><a href="<?php echo base_url('user') ?>">User</a></li>
 
        </ul>
    </nav>
    <!-- Start Article -->
    <article>
      <h1><?php echo $title ?></h1>