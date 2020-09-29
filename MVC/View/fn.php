<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();} for php 5.4 and above

if(session_id() == '' || !isset($_SESSION)){session_start();}
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
    <title>Upload</title>
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
          <li><a href="products.php">Products </a></li>
		  <li><a href="gallery.php">Gallery </a></li>
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

    <div class="row" style="margin-top:30px;">
      <div class="small-12">
        <h2> Product Add Form </h2>
		<form action= "?" method="POST" enctype="multipart/form-data">
		<lable>Photo Upload </lable>
		<input type="file" name="file" />
		<input type="submit" name="upload" value="Upload Image" />
		</form>
		<br>
		<?php
			if(isset($_POST['upload'])) {
			 $file_name = $_FILES['file']['name'];
			 $file_type = $_FILES['file']['type'];
			 $file_size = $_FILES['file']['size'];
			 $file_tem_loc = $_FILES['file']['tmp_name'];
			 $file_store = "images/products/".$file_name;
				if(move_uploaded_file($file_tem_loc,$file_store)){
					echo '<script type="text/javascript">alert("Successfully Uploaded");</script>';
					echo "Use bold text in the image name field. This is for product mismatch safety reason. <br>"; 
					echo "<b>$file_name<b>";
				}
			}
		?>	 
			
			<form method="post" action="add.php">
			<br> 
			Enter Product Code: <br/>
			<input type="text" name="id" /><br>
			<br>	
			Enter Product Name: <br/>
			<input type="text" name="name" /><br>
			<br>
			Enter Image Name: <br/>
			<input type="text" name="imgName" /><br>
			<br>
			Enter Description: <br/>
			<input type="text" name="desc" /><br>
			<br>
			Enter Available Units: <br/>
			<input type="text" name="unit" /><br>
			<br>
			
			Enter Price: <br/>
			<input type="text" name="price" /><br>
			<br>
			
			<input type="submit" name="submit" />
			</form>
			<br><br><br>
        
        <footer>
           <p style="text-align:center; font-size:0.8em;">&copy; View Tech. All Rights Reserved.</p>
        </footer>

      </div>
    </div>
	
	







    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
