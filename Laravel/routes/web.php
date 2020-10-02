<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view ('tokokomputer');
});

Route::get('/karyawan', function () {
	$karyawan=["Andi", "Budi", "Cici", "Doni", "Edi"];
    return view ('Karyawan/karyawan_list', compact("karyawan"));
});

Route::get('/produk', function () {
	$produk[]=["UPS013", "UPS APC SU3000INET", "APC", "12870000"];
	$produk[]=["MON048","VIEWSONIC P225f Flat","VIEWSONIC","7155000"];
	$produk[]=["PRN015","Epson LQ 2180","EPSON","5319000"];
	$produk[]=["MON047","VIEWSONIC G220f Flat","VIEWSONIC","5130000"];
    return view ('Produk/produk_list', compact("produk"));
});