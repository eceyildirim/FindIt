<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MapDesign.aspx.cs" Inherits="FindIt.MapDesign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mağaza Haritası Tasarımı</title>
    <link href="FlatlyTheme/bootstrap.css" rel="stylesheet" />
    <link href="FlatlyTheme/bootstrap.min.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />
</head>
<body style="background: linear-gradient(to bottom, #cde6e6 0%, #ffffff 64%); background-repeat: no-repeat;">
    <form id="form1" runat="server">
        <div class="container" style="padding: 50px;">
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <%--Rafın en boy bilgilerini girmek için olan alan--%>
                        <div class="card" style="width: 450px;">
                            <div class="card-body">
                                <h4 class="card-title">Raf Oluştur</h4>
                                <div class="card-body">
                                    <div class="row shelfCreate">
                                        <div class="col-sm-6">
                                            <h6 class="card-title">Raf Eni (cm)</h6>
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="number" class="form-control form-control-sm shelfInput" />
                                        </div>
                                    </div>
                                    <div class="row shelfCreate">
                                        <div class="col-sm-6">
                                            <h6 class="card-title">Raf Boyu (cm)</h6>
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="number" class="form-control form-control-sm shelfInput" />
                                        </div>
                                    </div>
                                    <div class="row shelfCreate">
                                        <div class="col-sm-6">
                                            <h6 class="card-title">Raf Adı</h6>
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control form-control-sm shelfInput" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                        </div>
                                        <div class="col-sm-6">
                                            <asp:Button ID="Button1" runat="server" Text="Raf Ekle" CssClass="btn btn-primary" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="padding-top: 2em;">
                        <%--Oluşturulan rafların görüleceği alan --%>
                        <div class="card" style="width: 450px;">
                            <div class="card-body">
                                <h4 class="card-title">Raflar</h4>
                                <div class="card-body">
                                    <table class="table table-hover">
                                        <thead>
                                            <th></th>
                                            <th>Raf Adı</th>
                                            <th>Raf Tasarım</th>
                                            <th>Sil</th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Raf Elektronik Aletler</td>
                                                <td></td>
                                                <td>
                                                    <asp:LinkButton ID="shelfDelete1" runat="server" ForeColor="Red">Sil</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Raf Bahçe Malzemeleri</td>
                                                <td></td>
                                                <td>
                                                    <asp:LinkButton ID="shelfDelete2" runat="server" ForeColor="Red">Sil</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Raf Boya - Badana</td>
                                                <td></td>
                                                <td>
                                                    <asp:LinkButton ID="shelfDelete3" runat="server" ForeColor="Red">Sil</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="card-title">Mağaza Haritası</h3>
                            <h6 class="card-subtitle mb-3 text-muted">Koymak istediğiniz rafları sürükleyerek haritadaki boş alanlara bırakınız.</h6>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
