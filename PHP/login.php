<!DOCTYPE html>
<html>
  <head>
<link href="bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="bootstrap.min.js"></script>
<script src="jquery-3.3.1.js"></script>

<style>
body#form1{ background-image:url("blur.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}

.form-heading { color:#fff; font-size:23px;}
.panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}
.panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}
.login-form .form-control {
  background: #f7f7f7 none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  border-radius: 4px;
  font-size: 14px;
  height: 50px;
  line-height: 50px;
}
.main-div {
  background: #ffffff none repeat scroll 0 0;
  border-radius: 2px;
  margin: 10px auto 30px;
  max-width: 38%;
  padding: 50px 70px 70px 71px;
}

.login-form .form-group {
  margin-bottom:10px;
}
.login-form{ text-align:center;}
.forgot a {
  color: #777777;
  font-size: 14px;
  text-decoration: underline;
}
.login-form  .btn.btn-primary {
  background: #f0ad4e none repeat scroll 0 0;
  border-color: #f0ad4e;
  color: #ffffff;
  font-size: 14px;
  width: 100%;
  height: 50px;
  line-height: 50px;
  padding: 0;
}
.forgot {
  text-align: left; margin-bottom:30px;
}
.botto-text {
  color: #ffffff;
  font-size: 14px;
  margin: auto;
}
.login-form .btn.btn-primary.reset {
  background: #ff9900 none repeat scroll 0 0;
}
.back { text-align: left; margin-top:10px;}
.back a {color: #444444; font-size: 13px;text-decoration: none;}

</style>
  </head>
  
<body id="form1">
<div class="container">
<br/><br/><br/><br/>
<div class="login-form">
<div class="main-div">
    <div class="panel">
   <h2>Login</h2>
   <p>Masukkan ID dan Password kamu.</p>
   </div>
<form name="form1" enctype="multipart/form-data" method="post" action="logingas.php">

        <div class="form-group">


            <input type="text" class="form-control" id="id" name="id" placeholder="ID">

        </div>

        <div class="form-group">

            <input type="password" class="form-control" id="password" name="password" placeholder="Password">

<br/>
        <button type="submit" class="btn btn-primary">Login</button>

    </form>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p>Belum punya akun? <a href="daftar.php">Daftar</a>
</div></div></div></div></div>


</body>
</html>
