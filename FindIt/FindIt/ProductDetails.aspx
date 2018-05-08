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
    <%--<script>
        $(document).ready(function () {
            $("ul li").eq(1).addClass("active");
        });
    </script>--%>
    <%--    neymiş bak--%>
</head>
<body class="body-costumer">
    <form id="form1" runat="server">

        <div class="row">
            <div class="col-md-6" style="padding: 50px;">
                <div class="card">
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
                                                <asp:Image runat="server" ID="productImage" />
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
                <div class="card" style="padding: 10px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Benzer Ürünler</label>
                        </div>
                        <div class="col-md-6">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6" style="padding: 50px;">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Ürün Haritası</h4>
                        <h6 class="card-subtitle mb-3 text-muted">Aradığınız ürünü haritayı kullanarak kolaylıkla bulabilirsiniz.</h6>
                        <div id="shelfsArea" class="container" style="background-color: #bdbdbd; width: 100%; height: 400px;">
                            <div id="raf1" class="DrawSquare text-center text-muted ui-draggable" style="cursor: move; position: relative;"></div>
                            <div id="raf7" class="DrawSquare text-center text-muted ui-draggable" style="cursor: move; position: relative; left: 59px; top: -40px;"></div>
                            <div id="raf2" class="DrawSquare text-center text-muted ui-draggable" style="cursor: move; position: relative; left: 0px; top: -38px;"></div>
                            <div id="raf11" class="DrawSquare text-center text-muted ui-draggable" style="cursor: move; position: relative; left: 59px; top: -78px;"></div>
                            <div id="raf12" class="DrawSquare text-center text-muted ui-draggable" style="cursor: move; position: relative; left: 0px; top: -75px;"></div>
                            <div id="raf13" class="DrawSquare text-center text-muted ui-draggable" style="cursor: move; position: relative; left: 59px; top: -115px;"></div>
                            <div id="raf14" class="DrawSquare text-center text-muted ui-draggable" style="cursor: move; position: relative; left: 128px; top: -240px;"></div>
                            <div id="raf15" class="DrawSquare text-center text-muted ui-draggable" style="cursor: move; position: relative; left: 128px; top: -237px;"></div>
                            <div id="raf16" class="DrawSquare text-center text-muted ui-draggable" style="cursor: move; position: relative; left: 128px; top: -236px;"></div>
                            <div id="raf18" class="DrawCircle text-center text-muted ui-draggable" style="cursor: move; position: relative; left: 127px; top: -214px;"></div>
                            <div id="raf17" class="DrawSquare text-center text-muted ui-draggable" style="cursor: move; position: relative; left: 33px; top: -258px;"></div>
                        </div>

                    </div>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<script>new LeaderLine(
  document.getElementById('raf18'),
  document.getElementById('raf'+<%=rafID%>+'')
);</script>
<!-- Javascript File Written Us -->
<script src="~/Script/script.js" type="text/javascript"></script>
</html>
