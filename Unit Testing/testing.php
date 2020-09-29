<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();} for php 5.4 and above

session_start();
include "config.php";
if ($_SESSION['type']=="admin"){
	
}
else{
	header('Location: index.php');
}

?>

<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Testing</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <script src="js/vendor/modernizr.js"></script>
	
  </head>
  <body>

    <nav class="top-bar" data-topbar role="navigation">
      <ul class="title-area">
        <li class="name">
          <h1><a href="index.php">View Tech</a></h1>
        </li>
        <li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
      </ul>

      <section class="top-bar-section">
      <!-- Right Nav Section -->
        <ul class="right">
          <li><a href="about.php">About</a></li>
          <li><a href="products.php">Products</a></li>
          <li><a href="cart.php">View Cart</a></li>
          <li><a href="orders.php">My Orders</a></li>
          <li><a href="contact.php">Contact</a></li>
          <?php
    
          if(isset($_SESSION['username'])){
            echo '<li><a href="account.php">My Account</a></li>';
            echo '<li><a href="logout.php">Log Out</a></li>';
          }
          else{
            echo '<li><a href="login.php">Log In</a></li>';
            echo '<li><a href="register.php">Register</a></li>';
          }
          ?>
        </ul>
      </section>
    </nav>
<?php
	//variable
	$productCode= 'testcode';
	$name= 'Test Name';
	$desc= 'Test Description';
	$imgName='lux2.jpg';
	$unit= '1';
	
	
	$price= '100';
	
	$sql= "insert into products (product_code, product_name,product_desc,product_img_name,qty,price) values('$productCode', '$name', '$desc','$imgName', '$unit', '$price' )";
	if (mysqli_query($mysqli,$sql)){
	echo "Test Upload is Successful. <br>";
	echo " values inserted are: <br> productCode= 'testcode'<br>
	name= 'Test Name'<br>
	desc= 'Test Description'<br>
	imgName='lux2.jpg'<br>
	unit= '1'<br>";
	echo "<br>";
	echo"<p> <a href=admin.php > Return to admin Page </a></p>";
	}
	else{
	echo "error " . mysqli_error($mysqli);
	}
?>

  </body>
</html>
