<?php
$kodeprd=$_POST["kode"];
$jenisprd=$_POST["jenis"];
$namaprd=$_POST["nama"];
$merekprd=$_POST["merek"];
$hargaprd=$_POST["harga"];
$stokprd=$_POST["stok"];

$conn=mysqli_connect("localhost","root","","komputer");
$sql="INSERT INTO `produk`(`KodePrd`, `Jenis`, `Nama`, `Merk`, `Harga`, `Stok`) VALUES ('$kodeprd','$jenisprd','$namaprd','$merekprd','$hargaprd','$stokprd')";
$query=mysqli_query($conn,$sql);

echo "Data berhasil ditambahkan, tunggu sebentar untuk mengarahkan kembali.."
?>
<meta http-equiv="refresh" content="2;url=index.php">