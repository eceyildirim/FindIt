<%@ Page Title="Raf ve Harita İşlemleri" Language="C#" MasterPageFile="~/Panel.Master" AutoEventWireup="true" CodeBehind="MapDesign.aspx.cs" Inherits="FindIt.MapDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $("ul li").eq(2).addClass("active");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="row">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Raf Oluştur</h4>
                    </div>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-3">
                                <label>Raf Adı</label>
                            </div>
                            <div class="col-md-1">
                                <label>:</label>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group-sm">
                                    <input class="form-control" type="text" placeholder="Raf Adı Giriniz." />
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-3">
                                <label>Raf Şekli Seçimi</label>
                            </div>
                            <div class="col-md-1">
                                <label>:</label>
                            </div>
                            <div class="col-md-8">
                                <div class="col-md-4">
                                    <asp:RadioButton ID="RadioButton_Square" runat="server" />
                                    <div class="DrawSquare" style="float: right;"></div>
                                </div>
                                <div class="col-md-4">
                                    <asp:RadioButton ID="RadioButton_Circle" runat="server" />
                                    <div class="DrawCircle" style="float: right;"></div>
                                </div>
                                <div class="col-md-4">
                                    <asp:RadioButton ID="RadioButton_Triangle" runat="server" />
                                    <div class="DrawTriangle" style="float: right;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Kullanılabilir Raflar</h4>
                    </div>
                    <div class="content">
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
                                    <td>
                                        <div class="DrawTriangle"></div>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="shelfDelete1" runat="server" ForeColor="Red">Sil</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Raf Bahçe Malzemeleri</td>
                                    <td>
                                        <div class="DrawSquare"></div>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="shelfDelete2" runat="server" ForeColor="Red">Sil</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Raf Boya - Badana</td>
                                    <td>
                                        <div class="DrawCircle"></div>
                                    </td>
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
        <div class="col-md-6">
            <div class="card">
                <div class="header">
                    <h4 class="title">Mağaza Haritası</h4>
                </div>
                <div class="content">

                </div>
            </div>
        </div>
    </div>
</asp:Content>
