<?php
session_start();
$noid=$_POST["id"];
$password=$_POST["password"];
$conn=mysqli_connect("localhost","root","","komputer");

$sql="SELECT NoPeg,pass,Nama from pegawai where NoPeg='$noid'";
$query=mysqli_query($conn,$sql);
$br=mysqli_fetch_row($query);

if($br[0]){
	if($br[1]==$password){
		echo "Selamat Datang $br[2]<P><meta http-equiv='refresh' content='2;url=index.php'>";
		$_SESSION["pegawai"]=$br[2];
	} else {
	echo "Password Salah<P><meta http-equiv='refresh' content='1;url=login.php'>";
}
}else{
	echo "Kamu belum terdaftar, daftar dulu<P><meta http-equiv='refresh' content='1;url=login.php'>";
}
?>