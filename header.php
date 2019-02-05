<!DOCTYPE html>
<html>
<head>
    <title>Tema Personalizado</title>
    <meta charset="UTF-8">
        
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        
    <link rel="stylesheet"
        href="<?php bloginfo('template_url'); ?>/style.css">
</head>
<body>

<?php        
    wp_nav_menu( array(
	'theme_location'  => 'primary',
	'depth'	          => 2, // 1 = no dropdowns, 2 = with dropdowns.
	'container'       => 'div',
	'container_class' => 'collapse navbar-collapse',
	'container_id'    => 'bs-example-navbar-collapse-1',
	'menu_class'      => 'navbar-nav mr-auto',
	'fallback_cb'     => 'WP_Bootstrap_Navwalker::fallback',
	'walker'          => new WP_Bootstrap_Navwalker(),
) );
?>

<!-- Image and text -->
<nav class="navbar navbar-light bg-dark">
  <a class="navbar-brand" href="index.php">
    <img src="<?php bloginfo('template_url'); ?>/logo.png" width="60" height="45" class="d-inline-block align-top" alt="">
  </a>
	<form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Buscar">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
  </form>
</nav>

<nav class="navbar navbar-expand-md navbar-light bg-info" role="navigation">

  <div class="container">
	<!-- Brand and toggle get grouped for better mobile display -->
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-controls="bs-example-navbar-collapse-1" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<a class="navbar-brand" href="#"></a>
		
		<?php
		wp_nav_menu( array(
			'theme_location'    => 'primary',
			'depth'             => 2, //1 = no dropdowns, 2 = with
			'container'         => 'div',
			'container_class'   => 'collapse navbar-collapse',
			'container_id'      => 'bs-example-navbar-collapse-1',
			'menu_class'        => 'nav navbar-nav',
			'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
			'walker'            => new WP_Bootstrap_Navwalker(),
		) );
		?>
	</div>
</nav>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
 	<ol class="carousel-indicators">
    	<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    	<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    	<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  	</ol>
  		<div class="carousel-inner">
   	 		<div class="carousel-item active">
     		<img src="<?php bloginfo('template_url'); ?>/produto.jpg" class="d-block w-100" alt="...">
    	</div>
    	<div class="carousel-item">
      		<img src="<?php bloginfo('template_url'); ?>/produto2.jpg" class="d-block w-100" alt="...">
    	</div>
    <div class="carousel-item">
      <img src="<?php bloginfo('template_url'); ?>/produto3.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    	<span class="carousel-control-next-icon" aria-hidden="true"></span>
    	<span class="sr-only">Next</span>
  </a>
</div>
    
<div class="container">