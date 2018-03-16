<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="FindIt.list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Listeleme</title>
    <link href="FlatlyTheme/bootstrap.css" rel="stylesheet" />
    <link href="FlatlyTheme/bootstrap.min.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />
</head>
<body class="body-customer">
    <form id="form1" runat="server">
        <div class="container" style="padding: 50px;">
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <%--Rafın en boy bilgilerini girmek için olan alan--%>
                        <div class="card" style="width: 450px;">
                            <div class="btn-group-vertical" data-toggle="buttons">
                                <button type="button" class="btn btn-outline-primary">ürün adı</button>
                                <button type="button" class="btn btn-outline-primary">ürün adı</button>
                                <button type="button" class="btn btn-outline-primary">ürün adı</button>
                                <button type="button" class="btn btn-outline-primary">ürün adı</button>
                                <button type="button" class="btn btn-outline-primary">ürün adı</button>
                                <button type="button" class="btn btn-outline-primary">ürün adı</button>
                                <button type="button" class="btn btn-outline-primary">ürün adı</button>
                                <button type="button" class="btn btn-outline-primary">ürün adı</button>
                                <button type="button" class="btn btn-outline-primary">ürün adı</button>
                                <button type="button" class="btn btn-outline-primary">ürün adı</button>
                                <button type="button" class="btn btn-outline-primary">ürün adı</button>
                                <button type="button" class="btn btn-outline-primary">ürün adı</button>


                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Ürün Bilgileri</h4>
                              <img style="height: 200px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Card image">

                            <div class="card-body">
                                <div class="row shelfCreate">
                                    <div class="col-sm-6">
                                        <h6 class="card-title">Ürün Adı</h6>
                                    </div>
                                    <div class="form-group">
                                        <select class="form-control">
                                            <option>ürün1</option>
                                            <option>ürün1</option>
                                            <option>ürün1</option>
                                            <option>ürün1</option>
                                            <option>ürün1</option>
                                            <option>ürün1</option>
                                            <option>ürün1</option>
                                            <option>ürün1</option>
                                            <option>ürün1</option>
                                            <option>ürün1</option>
                                            <option>ürün1</option>
                                            <option>ürün1</option>
                                            <option>ürün1</option>
                                            <option>ürün1</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="row shelfCreate">
                                    <div class="col-sm-6">
                                        <h6 class="card-title">Fiyat</h6>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Fiyat" id="inputDefault" type="text">
                                    </div>
                                </div>
                                <div class="row shelfCreate">
                                    <div class="col-sm-6">
                                        <h6 class="card-title">Stok</h6>
                                    </div>
                                    <div class="form-group">
                                        <select class="form-control">
                                            <option>stok1</option>
                                            <option>stok1</option>
                                            <option>stok1</option>
                                            <option>stok1</option>
                                            <option>stok1</option>
                                            <option>stok1</option>
                                            <option>stok1</option>
                                            <option>stok1</option>
                                            <option>stok1</option>
                                            <option>stok1</option>
                                        </select>
                                    </div>
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
