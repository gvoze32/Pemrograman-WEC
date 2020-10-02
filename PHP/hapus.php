<?php
$kode=$_GET["kodeprd"];
$conn=mysqli_connect("localhost","root","","komputer");
$sql="DELETE from produk where KodePrd='$kode'";
$query=mysqli_query($conn,$sql);

echo "Data berhasil dihapus, tunggu sebentar untuk mengarahkan kembali.."
?>

<meta http-equiv="refresh" content="2;url=index.php">