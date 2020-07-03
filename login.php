<?php 
session_start();
require 'functions.php';

if( isset($_SESSION["login"]) ) {
	header("Location: admin_agenda.php");
	exit;
}

if( isset($_POST["login"]) ) {

	$username = $_POST["username"];
	$password = $_POST["password"];

	$result = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username'");

	// cek username
	if( mysqli_num_rows($result) === 1 ) {

		// cek password
		$row = mysqli_fetch_assoc($result);
		if( password_verify($password, $row["password"]) ) {
			// set session
			$_SESSION["login"] = true;

			header("Location: admin_agenda.php");
			exit;
		}
	}

	$error = true;

}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Halaman Login</title>
</head>
<body>

<h1>Halaman Login</h1>

<a href="registrasi.php">Sign Up</a>
<br>
<br>

<?php if( isset($error) ) : ?>
	<p style="color: red; font-style: italic;">username / password salah</p>
<?php endif; ?>

<form action="" method="post">
	<label for="username">Username :</label>
	<br>
	<input type="text" name="username" id="username">
	<br>
	<br>
	<label for="password">Password :</label>
	<br>
	<input type="password" name="password" id="password">
	<br>
	<br>
	<button type="submit" name="login">Login</button>
</form>

</body>
</html>