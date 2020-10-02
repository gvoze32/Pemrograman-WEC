<?php
$kodeprd=$_POST["kode"];
$jenisprd=$_POST["jenis"];
$namaprd=$_POST["nama"];
$merekprd=$_POST["merek"];
$hargaprd=$_POST["harga"];
$stokprd=$_POST["stok"];

$conn=mysqli_connect("localhost","root","","komputer");
$sql="UPDATE `produk` SET `Jenis` = '$jenisprd', `Nama` = '$namaprd', `Merk` = '$merekprd', `Harga` = '$hargaprd', `Stok` = '$stokprd' WHERE `produk`.`KodePrd` = '$kodeprd'; ";
$query=mysqli_query($conn,$sql);

echo "Data berhasil diperbarui, tunggu sebentar untuk mengarahkan kembali.."
?>
<meta http-equiv="refresh" content="2;url=index.php">