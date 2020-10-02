<!doctype html>
<html>
<head>
<?php
session_start();
?>
<meta charset="utf-8">
<title>DATA PERUSAHAAN TOKO KOMPUTER</title>
<link rel="stylesheet" href="jquery.dataTables.min.css">
<link rel="stylesheet" href="bootstrap.min.css">
<script src="jquery-3.3.1.js"></script>
<script src="jquery.dataTables.min.js"></script>

<script language="javascript">
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>

</head>

<body>
<h1>DATA PERUSAHAAN TOKO KOMPUTER</h1>

<hr>

<?php
if(isset($_SESSION["pegawai"])){
	
echo "Selamat Datang, ".$_SESSION["pegawai"]."<div>Bukan kamu? <a href=logout.php>Keluar</a>";

} else{
	echo "Login gagal, mohon login kembali. <a href=login.php>Login</a>";
}
?>

<hr>

<a class="btn btn-primary mb-4" href='tambah.php'>Tambah Data</a>

<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Kode</th>
                <th>Jenis</th>
                <th>Nama</th>
                <th>Merek</th>
                <th>Harga</th>
                <th>Stok</th>
                <th>Edit</th>
            </tr>
        </thead>
        
        <tbody>
        
        <?php
		$conn=mysqli_connect("localhost","root","","komputer");
		$sql="select * from produk";
		$query=mysqli_query($conn,$sql);
		
		while($br=mysqli_fetch_row($query)) {
		
		echo "
            <tr>
                <td>$br[0]</td>
                <td>$br[1]</td>
                <td>$br[2]</td>
                <td>$br[3]</td>
                <td>$br[4]</td>
                <td>$br[5]</td>
				<td><a class='btn btn-success' href='ubah.php?kodeprd=$br[0]'>Ubah</a>
				<a class='btn btn-danger' href='hapus.php?kodeprd=$br[0]'>Hapus</a></td>
            </tr>
			";
		}
			
		 ?>
		 
        </tbody>
        
        <tfoot>
            <tr>
                <th>Kode</th>
                <th>Jenis</th>
                <th>Nama</th>
                <th>Merek</th>
                <th>Harga</th>
                <th>Stok</th>
                <th>Edit</th>
            </tr>
        </tfoot>
    </table>
</body>
</html>