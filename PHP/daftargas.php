<?php
$pw=$_POST["password"];
$id=$_POST["id"];
$kode=$_POST["nama"];
$jab=$_POST["jabatan"];
$jen=$_POST["jenis_kelamin"];
$conn=mysqli_connect("localhost","root","","komputer");
$sql="INSERT INTO `pegawai`(`NoPeg`, `pass`, `Nama`, `Jabatan`, `JK`) VALUES ('$id','$pw','$kode','$jab','$jen')";
$query=mysqli_query($conn,$sql);

echo "Berhasil daftar, silahkan login kembali."
?>

<meta http-equiv="refresh" content="2;url=login.php">