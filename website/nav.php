<?php include 'check.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="css/bootstrap.css">
</head>
    <link rel="stylesheet" type="text/css" href="css/style.css">

<nav class="navbar navbar-default navbar-fixed-top">
  <div id="navigation">
  <a href="">Welcome <?php echo $user ?></a>
  <a href="gallery.php">Gallery</a>
  <a href="upload.php">Upload</a>
		<?php 
	if ($user == 'admin') {?>
  <a href="admin.php">Admin</a>
	<?php } ?>
  <a href="logout.php">Logout <?php echo $user ?></a>
  </div>
</nav>





<html>