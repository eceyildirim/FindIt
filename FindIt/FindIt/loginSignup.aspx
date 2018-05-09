<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginSignup.aspx.cs" Inherits="FindIt.loginSignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Find It</title>
    <link href="FlatlyTheme/bootstrap.min.css" rel="stylesheet" />
    <link href="FlatlyTheme/bootstrap.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />
    <link rel="icon" type="image/png" href="Images/finditlogo.png" />
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="Script/script.js"></script>
    <!-- Latest compiled and minified CSS -->
    <%--<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" />--%>
    <script src="Script/bootstrap.min.js"></script>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>--%>
    <!-- Latest compiled and minified JavaScript -->
    <%--<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>--%>
</head>

<body class="body-employee">
    <form id="Form1" runat="server">
        <div class="container" style="padding: 50px;">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="card-title">Find It</h3>
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a class="nav-link active show" data-toggle="tab" href="#login">Üye Girişi</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#signup">Yeni Üyelik</a>
                                </li>
                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade active show" id="login" style="margin-top: 2em;">
                                    <h4>Üye Girişi</h4>
                                    <div class="form-group">
                                        <label for="textEmployeeTC">TC Kimlik Numarası</label>
                                        <asp:TextBox class="form-control" ID="textKullaniciAd" placeholder="TC Kimlik Numaranızı Giriniz" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="passwordP">Parola</label>
                                        <asp:TextBox class="form-control" ID="textPasswordP" placeholder="Parolanızı Giriniz" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>

                                    <asp:Button ID="ButtonLogin" CssClass="btn btn-success" runat="server" Text="Giriş" Width="200" OnClick="ButtonLogin_Click" />
                                </div>
                                <div class="tab-pane fade" id="signup" style="margin-top: 2em;">
                                    <h4>Yeni Üyelik</h4>
                                    <div class="form-group">
                                        <label for="textTC">TC Kimlik Numarası</label>
                                        <asp:TextBox class="form-control" ID="textTC" placeholder="TC Kimlik Numaranızı Giriniz" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label for="textCreateEmployeeName">Ad</label>
                                        <asp:TextBox class="form-control" ID="textCreateEmployeeName" placeholder="Adınızı Giriniz" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label for="textCreateEmployeeSurname">Soyad</label>
                                        <asp:TextBox class="form-control" ID="textCreateEmployeeSurname" placeholder="Soyadınızı Giriniz" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label for="passwordCreateP">Parola</label>
                                        <asp:TextBox class="form-control" ID="passwordCreateP" placeholder="Parolanızı Giriniz" runat="server" TextMode="Password" />
                                    </div>
                                    <div class="form-group">
                                        <label for="passwordCreateP2">Parola(Tekrar)</label>
                                        <asp:TextBox class="form-control" ID="passwordCreateP2" placeholder="Parolanızı Giriniz" runat="server" TextMode="Password" />
                                    </div>
                                    <asp:Button ID="signUpButton" CssClass="btn btn-success" runat="server" Text="Üye Ol" Width="200" OnClick="signUpButton_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </form>
</body>
</html>
