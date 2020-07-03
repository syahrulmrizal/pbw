<?php 
session_start();

if( !isset($_SESSION["login"]) ) {
	header("Location: login.php");
	exit;
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Agenda</title>
</head>
<body>

	<a href="logout.php" class="logout">Logout</a>

<?php
// --- koneksi ke database
$koneksi = mysqli_connect("localhost","root","","pbwuas") or die(mysqli_error());

// --- Fngsi tambah data (Create)
function tambah($koneksi){
	
	if (isset($_POST['btn_simpan'])){
		$tanggal = $_POST['tanggal'];
		$judul = $_POST['judul'];
		
		if(!empty($tanggal) && !empty($judul)){
			$sql = "INSERT INTO agenda VALUES('','$tanggal','$judul')";
			$simpan = mysqli_query($koneksi, $sql);
			if($simpan && isset($_GET['aksi'])){
				if($_GET['aksi'] == 'create'){
					header('location: admin_agenda.php');
				}
			}
		} else {
			$pesan = "Tidak dapat menyimpan, data belum lengkap!";
		}
	}

	?> 
		<form action="" method="POST">
			<fieldset>
				<legend><h2>Tambah Data</h2></legend>
				<label>Tanggal <br><input type="date" name="tanggal" /></label>
				<br><br>
				<label>Judul <br><input type="text" name="judul" /></label>
				<br><br>
				<input type="submit" name="btn_simpan" value="Simpan"/>
				<input type="reset" name="reset" value="Besihkan"/>
				<br>
				<p><?php echo isset($pesan) ? $pesan : "" ?></p>
			</fieldset>
		</form>
	<?php

}
// --- Tutup Fngsi tambah data


// --- Fungsi Baca Data (Read)
function tampil_data($koneksi){
	$sql = "SELECT * FROM agenda";
	$query = mysqli_query($koneksi, $sql);
	
	echo "<fieldset>";
	echo "<legend><h2>Agenda</h2></legend>";
	
	echo "<table border='1' cellpadding='10'>";
	echo "<tr>
			<th>ID</th>
			<th>Tanggal</th>
			<th>Judul</th>
		  </tr>";
	
	while($data = mysqli_fetch_array($query)){
		?>
			<tr>
				<td><?php echo $data['id']; ?></td>
				<td><?php echo $data['tanggal']; ?></td>
				<td><?php echo $data['judul']; ?></td>
				<td>
					<a href="admin_agenda.php?aksi=update&id=<?php echo $data['id']; ?>&nama=<?php echo $data['judul']; ?>&hasil=<?php echo $data['tanggal']; ?>&lama=<?php echo $data['foto']; ?>&tanggal=<?php echo $data['konten']; ?>">Ubah</a> - <a href="admin_agenda.php?aksi=delete&id=<?php echo $data['id']; ?>">Hapus</a>
				</td>
			</tr>
		<?php
	}
	echo "</table>";
	echo "</fieldset>";
}
// --- Tutup Fungsi Baca Data (Read)


// --- Fungsi Ubah Data (Update)
function ubah($koneksi){

	// ubah data
	if(isset($_POST['btn_ubah'])){
		$id = $_POST['id'];
		$tanggal = $_POST['tanggal'];
		$judul = $_POST['judul'];
		
		if(!empty($tanggal) && !empty($judul)){
			$sql_update = "UPDATE agenda SET tanggal='$tanggal', judul='$judul' WHERE id=$id";
			$update = mysqli_query($koneksi, $sql_update);
			if($update && isset($_GET['aksi'])){
				if($_GET['aksi'] == 'update'){
					header('location: admin_agenda.php');
				}
			}
		} else {
			$pesan = "Data tidak lengkap!";
		}
	}
	
	// tampilkan form ubah
	if(isset($_GET['id'])){
		?>
			<a href="admin_agenda.php"> &laquo; Home</a> | 
			<a href="admin_agenda.php?aksi=create"> (+) Tambah Data</a>
			<hr>
			
			<form action="" method="POST">
			<fieldset>
				<legend><h2>Ubah Data</h2></legend>
				<input type="hidden" name="id" value="<?php echo $_GET['id'] ?>"/>
				<label>Tanggal
					<br>
					<input type="date" name="tanggal" value="<?php echo $_GET['hasil'] ?>"/>
				</label>
				<br><br>
				<label>Judul
					<br>
					<input type="text" name="judul" value="<?php echo $_GET['nama'] ?>"/>
				</label>
				<br><br>
				<input type="submit" name="btn_ubah" value="Simpan Perubahan"/> atau <a href="admin_agenda.php?aksi=delete&id=<?php echo $_GET['id'] ?>"> (x) Hapus data ini</a>!
				<br>
				<p><?php echo isset($pesan) ? $pesan : "" ?></p>
				
			</fieldset>
			</form>
		<?php
	}
	
}
// --- Tutup Fungsi Update


// --- Fungsi Delete
function hapus($koneksi){

	if(isset($_GET['id']) && isset($_GET['aksi'])){
		$id = $_GET['id'];
		$sql_hapus = "DELETE FROM agenda WHERE id=" . $id;
		$hapus = mysqli_query($koneksi, $sql_hapus);
		
		if($hapus){
			if($_GET['aksi'] == 'delete'){
				header('location: admin_agenda.php');
			}
		}
	}
	
}
// --- Tutup Fungsi Hapus


// ===================================================================

// --- Program Utama
if (isset($_GET['aksi'])){
	switch($_GET['aksi']){
		case "create":
			echo '<a href="admin_agenda.php"> &laquo; Home</a>';
			tambah($koneksi);
			break;
		case "read":
			tampil_data($koneksi);
			break;
		case "update":
			ubah($koneksi);
			tampil_data($koneksi);
			break;
		case "delete":
			hapus($koneksi);
			break;
		default:
			echo "<h3>Aksi <i>".$_GET['aksi']."</i> tidaka ada!</h3>";
			tambah($koneksi);
			tampil_data($koneksi);
	}
} else {
	tambah($koneksi);
	tampil_data($koneksi);
}

?>
</body>
</html>