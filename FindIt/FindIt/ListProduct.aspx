<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListProduct.aspx.cs" Inherits="FindIt.ListProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ürün Listeleme</title>
    <link href="FlatlyTheme/bootstrap.css" rel="stylesheet" />
    <link href="FlatlyTheme/bootstrap.min.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>
<body class="body-costumer">
    <form id="form1" runat="server">
        <div class="row justify-content-md-center" style="padding: 50px;">
            <div class="col-md-6">
                <div class="input-group">
                    <input type="text" class="form-control"   name="searchinpage"  placeholder="Aradığınız ürünü buraya yazın"/>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-fill btn-success" Text="Ara" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
        <div class="container" style="padding: 50px;">
            <div class="row">
                <div class="col-md-4">
                    <div class="row">
                        <div class="card" style="width: 450px;">
                            <div class="card-body">
                                <h4 class="card-title">Filtre</h4>
                                <div class="card-body">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">Kategoriler<a href="#"<i class="fa fa-plus pull-right"></i></a></li>
                                        <li class="list-group-item">Fiyat Aralığı<a href="#"<i class="fa fa-plus pull-right"></i></a></li>
                                        <li class="list-group-item">Stokta Olanlar<a href="#"<i class="fa fa-plus pull-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <%=productLists %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-md-center" style="padding: 50px;">
            <div class="col-md-2">
                <ul class="pagination">
                    <li class="page-item active">
                        <a class="page-link" href="#">1</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="ListProduct.aspx?Search="+<%=search %>+"?Page=2">2</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="ListProduct.aspx?Search="+<%=search %>+"?Page=3">3</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="ListProduct.aspx?Search="+<%=search %>+"?Page=4">4</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="ListProduct.aspx?Search="+<%=search %>+"?Page=5">5</a>
                    </li>
                    <li class="page-item active">
                        <a class="page-link" href="ListProduct.aspx?Search="+<%=search %>+"?Page=6">6</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="ListProduct.aspx?Search="+<%=search %>+"?Page=7">7</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="ListProduct.aspx?Search="+<%=search %>+"?Page=8">8</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="ListProduct.aspx?Search="+<%=search %>+"?Page=9">9</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="ListProduct.aspx?Search="+<%=search %>+"/?Page=10">10</a>
                    </li>
                </ul>
            </div>
        </div>
    </form>
</body>
</html>
