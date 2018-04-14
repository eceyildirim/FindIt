<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="FindIt.ProductDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Mağaza Haritası Tasarımı</title>
    <link href="FlatlyTheme/bootstrap.css" rel="stylesheet" />
    <link href="FlatlyTheme/bootstrap.min.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />

    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body  class="body-costumer">
    <form id="form1" runat="server">
    <div class="container" style="padding : 50px;">
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                    <div class="card" style="width: 450px;">
                        <div class="card-body"" >
                        <h4 class="card-title">Ürün Detay</h4>
                            <div class="card-body">
                                <div class="row shelfCreate">
                                    <div class="col-sm-6">
<%--            <asp:Image ID="ImageProduct" runat="server" Height="250px" Width="350px" />--%>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
</ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="" alt="deneme" style="width:100%;" />

        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
     <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
</div>


                                        </div>
                           </div>
                                <div class="row shelfCreate">
                                    <div class="col-sm-6">
                                        <h6 class="card-title">Ürün Adı</h6>
                                    </div>
                                </div>
                                <div class="row shelfCreate">
                                    <div class="col-sm-6">
                                  <h6 class="card-title">Ürün Fiyatı</h6>
                                        </div>
                                </div>
                                <div class="row shelfCreate">
                                    <div class="col-sm-6">
                                  <h6 class="card-title">Stok Bilgisi</h6>
                                        </div>
                                </div>
                                <div class="row shelfCreate">
                                    <div class="col-sm-6">
                                  <h6 class="card-title">Özellikler</h6>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                      <h3 class="card-title">Ürün Haritası</h3>
                      <h6 class="card-subtitle mb-3 text-muted">Aradığınız ürünü haritayı kullanarak kolaylıkla bulabilirsiniz.</h6>

                    </div>
                </div>
            </div>




                  </div>


    
    </div>
    </form>
</body>
</html>
