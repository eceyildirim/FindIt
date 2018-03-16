<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginSignup.aspx.cs" Inherits="FindIt.loginSignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Find It</title>
     
    <link href="FlatlyTheme/bootstrap.css" rel="stylesheet" />
    <link href="FlatlyTheme/bootstrap.min.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />

 <!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

</head>

<body class="body-employee">
    
  
    <div class="container" style="padding : 50px;">
     <div class="card-body" style="width: 475px;">

  <h2>Find It</h2>
  <ul class="nav nav-tabs">
    <li class="active"><a href="#logIn">LogIn</a></li>
    <li><a href="#signUp">SignUp</a></li>
  </ul>

  <div class="tab-content">
    <div id="logIn" class="tab-pane fade in active">
      <h3>Log In</h3>

         <div class="form-group">
      <label for="textEmployeeTC">TC Kimlik Numarası</label>
      <input type="text" class="form-control" id="textKullaniciAd" aria-describedby="textKullaniciAdiBilgi" placeholder="TC Kimlik Numaranızı Giriniz" style="width: 450px;"/>
    </div>
    
    <div class="form-group">
      <label for="passwordP">Parola</label>
      <input type="password" class="form-control" id="passwordP" placeholder="Parolanızı Giriniz" style="width: 450px;"/>
    </div>

          <button type="submit" class="btn btn-primary">Gönder</button>
  
    </div>
    <div id="signUp" class="tab-pane fade">
      <h3>Sign Up</h3>

          <div class="form-group">
      <label for="textTC">TC Kimlik Numarası</label>
      <input type="text" class="form-control" id="textTC" placeholder="TC Kimlik Numaranızı Giriniz" style="width: 450px;"/>
    </div>
         <div class="form-group">
                <label for="textCreateEmployeeName">KullanıcıAdı</label>
                <input type="text" class="form-control" id="textCreateEmployee" placeholder="Adınızı Giriniz" style="width: 450px;"/>

            </div>
          <div class="form-group">
      <label for="textCreateEmployeeSurname">Soyad</label>
      <input type="password" class="form-control" id="textCreateEmployeeSurname" placeholder="Soyadınızı Giriniz" style="width: 450px;"/>
    </div>
            <div class="form-group">
                <label for="passwordCreateP">Parola</label> 
                <input type="password" class="form-control" id="passwordCreateP" placeholder="Parolanızı Giriniz" style="width: 450px;"/>
            </div>
            <div class="form-group">
                <label for="passwordCreateP2">Parola(Tekrar)</label> 
                <input type="password" class="form-control" id="passwordCreateP2" placeholder="Parolanızı Giriniz" style="width: 450px;"/>
            </div>
      
                    <button type="submit" class="btn btn-primary">Gönder</button>

          </div>



      </div>


    </div>
  </div>

<script>
$(document).ready(function(){
    $(".nav-tabs a").click(function(){
        $(this).tab('show');
    });
});
</script>
    
    
    

    



</body>
</html>

