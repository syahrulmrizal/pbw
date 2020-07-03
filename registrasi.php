<?php 
require 'functions.php';

if( isset($_POST["register"]) ) {

	if( registrasi($_POST) > 0 ) {
		echo "<script>
				alert('user baru berhasil ditambahkan!');
				document.location.href = 'login.php';
			  </script>";
	} else {
		echo mysqli_error($conn);
	}
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Halaman Registrasi</title>
	<style>
		label {
			display: block;
		}
	</style>
</head>
<body>

<h1>Halaman Registrasi</h1>

<form action="" method="post">
	<label for="username">username :</label>
	<input type="text" name="username" id="username">
	<br>
	<br>
	<label for="password">password :</label>
	<input type="password" name="password" id="password">
	<br>
	<br>
	<label for="password2">konfirmasi password :</label>
	<input type="password" name="password2" id="password2">
	<br>
	<br>
	<button type="submit" name="register">Register!</button>
</form>

</body>
</html>