<h1>Data Karyawan</h1><br>

<table border="1" width="200">
	<tr><th width="30">No</th><th>Nama</th>
	</tr>
	<?php $no=1; ?>
	@foreach ($karyawan as $kyn)
	<tr>
		<td><?php echo $no; ?></td><td>{{$kyn}}</td>
	</tr>
	<?php $no++;?>
	@endforeach
</table>