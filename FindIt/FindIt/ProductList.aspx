<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="FindIt.ProductList" %>

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
                    <input class="form-control" id="ex3" type="text" placeholder="Aradığınız ürünü buraya yazın">
                    <a href="#" class="btn btn-fill btn-success">Ara</a>
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
                                        <li class="list-group-item">Marka<a href="#"<i class="fa fa-plus pull-right"></i></a></li>
                                        <li class="list-group-item">Fiyat Aralığı<a href="#"<i class="fa fa-plus pull-right"></i></a></li>
                                        <li class="list-group-item">Listeleme Seçeneği<a href="#"<i class="fa fa-plus pull-right"></i></a></li>
                                        <li class="list-group-item">Stokta Olanlar<a href="#"<i class="fa fa-plus pull-right"></i></a></li>
                                        <li class="list-group-item">Yeni Ürünler<a href="#"<i class="fa fa-plus pull-right"></i></a></li>
                                        <li class="list-group-item">İndirimdekiler<a href="#"<i class="fa fa-minus pull-right"></i></a></li>
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
                                <div class="col-sm-4">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title">Special title treatment</h5>
                                            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                            <a href="#" class="btn btn-fill btn-info">İncele</a>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title">Special title treatment</h5>
                                            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                            <a href="#" class="btn btn-fill btn-info">İncele</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title">Special title treatment</h5>
                                            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                            <a href="#" class="btn btn-fill btn-info">İncele</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title">Special title treatment</h5>
                                            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                            <a href="#" class="btn btn-fill btn-info">İncele</a>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title">Special title treatment</h5>
                                            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                            <a href="#" class="btn btn-fill btn-info">İncele</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title">Special title treatment</h5>
                                            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                            <a href="#" class="btn btn-fill btn-info">İncele</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-md-center" style="padding: 50px;">
            <div class="col-md-2">
                <ul class="pagination">
                    <li class="page-item disabled">
                        <a class="page-link" href="#">&laquo;</a>
                    </li>
                    <li class="page-item active">
                        <a class="page-link" href="#">1</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">2</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">3</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">4</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">5</a>
                    </li>
                    <li class="page-item active">
                        <a class="page-link" href="#">6</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">7</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">8</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">9</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">10</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">&raquo;</a>
                    </li>

                </ul>
            </div>
        </div>
    </form>
</body>
</html>
