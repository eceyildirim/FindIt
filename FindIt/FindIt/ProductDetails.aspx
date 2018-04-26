<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="FindIt.ProductDetails" Title="Ürün Detay" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Find It </title>
    <link href="FlatlyTheme/bootstrap.css" rel="stylesheet" />
    <link href="FlatlyTheme/bootstrap.min.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
</html>

