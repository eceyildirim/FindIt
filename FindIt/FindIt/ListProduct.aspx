<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListProduct.aspx.cs" Inherits="FindIt.ListProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ürün Listeleme</title>
    <link href="FlatlyTheme/bootstrap.css" rel="stylesheet" />
    <link href="FlatlyTheme/bootstrap.min.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body class="body-costumer">
    <form id="form1" runat="server">
        <div class="row justify-content-md-center" style="padding: 50px;">
            <div class="col-md-6">
                <div class="input-group">
                    <div class="col-md-10">
                        <input type="text" class="form-control" name="searchinpage" placeholder="Aradığınız ürünü buraya yazın" />
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-fill btn-success" Text="Ara" OnClick="Button1_Click" />
                    </div>
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
                                    <div class="row" >
                                        <div class="panel-group" style="width:100%">
                                            <div class="panel panel-info">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" href="#collapse1" style="text-decoration:none;">Kategori</a>
                                                    </h4>
                                                </div>
                                                <div id="collapse1" class="panel-collapse collapse">
                                                    <ul class="list-group">
                                                        <li class="list-group-item">One</li>
                                                        <li class="list-group-item">Two</li>
                                                        <li class="list-group-item">Three</li>
                                                    </ul>
                                                    <div class="panel-footer">Footer</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="panel-group" style="width:100%">
                                            <div class="panel panel-info">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" href="#collapse2" style="text-decoration:none;">Stok Durumu</a>
                                                    </h4>
                                                </div>
                                                <div id="collapse2" class="panel-collapse collapse">
                                                    <ul class="list-group">
                                                        <li class="list-group-item">
                                                            <asp:RadioButton ID="RadioButton1" GroupName="stokgrup" runat="server" Text="Stokta var"  />
                                                        </li>
                                                        <li class="list-group-item">
                                                            <asp:RadioButton ID="RadioButton2" GroupName="stokgrup" runat="server" Text="Stokta yok" />
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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
    </form>
</body>
</html>
