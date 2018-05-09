<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="FindIt.ProductDetails" Title="Ürün Detay" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Find It </title>
    <link href="FlatlyTheme/bootstrap.css" rel="stylesheet" />
    <link href="FlatlyTheme/bootstrap.min.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="Style/leader-line.css" rel="stylesheet" />

    <!-- Decoration Written Us -->
    <link href="Style/style.css" rel="stylesheet" />

    <!-- JQuery Files -->
    <script src="Script/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="Script/leader-line.js"></script>
    <script src="Script/leader-line.min.js.js"></script>
</head>
<body class="body-costumer">
    <form id="form1" runat="server">

        <div class="row">
            <div class="col-md-6" style="padding: 50px;">
                <div class="card" style="padding: 50px;">
                    <div class="header">
                        <h4 class="title">Ürün Detay</h4>
                    </div>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card" style="width: 200px;">
                                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                        <ol class="carousel-indicators">
                                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                        </ol>
                                        <div class="carousel-inner">
                                            <div class="item active">
                                                <asp:Image runat="server" ID="productImage" CssClass="img-responsive" Height="200" Width="200" />
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
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Ürün Adı</label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label runat="server" ID="labelUrunAd"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Ürün Fiyatı</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label runat="server" ID="labelUrunFiyat"></asp:Label>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Stok Bilgisi</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label runat="server" ID="labelStokBilgi"></asp:Label>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card" style="padding: 10px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Özellikler</label>
                        </div>
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="labelOzellikler"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="card" style="margin-top: 20px; padding: 20px;">
                    <div class="header">
                        <h4 class="title">Arama</h4>
                    </div>
                    <div class="content">
                        <div class="form-group ">
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="inputlg" name="search" placeholder="Aradığınız ürünü buraya yazın" />
                            </div>
                            <div class="col-md-2">
                                <asp:Button ID="btnSearch" CssClass="btn btn-success" runat="server" Text="Ara" Width="50" OnClick="btnSearch_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6" style="padding: 50px;">
                <div class="card" style="padding: 25px;">
                    <div class="header">
                        <h4 class="title">Ürün Haritası</h4>
                        <h6 class="card-subtitle mb-3 text-muted">Aradığınız ürünü haritayı kullanarak kolaylıkla bulabilirsiniz.</h6>
                    </div>
                    <div class="content" style="padding: 10px;">
                        <div id="shelfsArea" class="container" style="background-color: #bdbdbd; width: 100%; height: 400px;">
                            <%=harita %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<script>
    new LeaderLine(
  document.getElementById('raf18'),
  document.getElementById('raf' +<%=rafID%> +''));
  $('#raf' +<%=rafID%> +'').css('box-shadow', '0px 1px 19px 9px rgba(255,255,255,1');
    $('#raf' +<%=rafID%> +'').css('background-color', '#ffe382');
</script>
<!-- Javascript File Written Us -->
<script src="Script/script.js" type="text/javascript"></script>
</html>
