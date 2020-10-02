<h1>Data Produk</h1><br>

<table border="1">
	<tr>
		<th>KODE</th><th>NAMA</th><th>MERK</th><th>HARGA</th>
	</tr>
	@foreach ($produk as $prd)
	<tr>
		<td>{{$prd [0]}}</td>
		<td>{{$prd [1]}}</td>
		<td>{{$prd [2]}}</td>
		<td>{{$prd [3]}}</td>
	</tr>
	@endforeach
</table>