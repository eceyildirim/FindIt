<%@ Page Title="Raf ve Harita İşlemleri" Language="C#" MasterPageFile="~/Panel.Master" AutoEventWireup="true" CodeBehind="MapDesign.aspx.cs" Inherits="FindIt.MapDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $("ul li").eq(2).addClass("active");
        });
    </script>
    <link rel="stylesheet" href="http://localhost:58782/code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <input id="harita" type="hidden" name="html" />
    <input type="hidden" name="operation" value="save" />
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
                                    <input class="form-control" name="rafAd" type="text" placeholder="Raf Adı Giriniz." />
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-3">
                                <label>Raf Alt Kategori</label>
                            </div>
                            <div class="col-md-1">
                                <label>:</label>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList_SubCategorySelect" CssClass="form-control" runat="server"></asp:DropDownList>
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
                                    <asp:RadioButton ID="RadioButton_Square" GroupName="sekil" runat="server" />
                                    <div class="DrawSquare" style="float: right;"></div>
                                </div>
                                <div class="col-md-4">
                                    <asp:RadioButton ID="RadioButton_Circle" GroupName="sekil" runat="server" />
                                    <div class="DrawCircle" style="float: right;"></div>
                                </div>
                                <div class="col-md-4">
                                    <asp:RadioButton ID="RadioButton_Triangle" GroupName="sekil" runat="server" />
                                    <div class="DrawTriangle" style="float: right;"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-10"></div>
                            <div class="col-md-2">
                                <asp:Button ID="btnAddShelf" CssClass="btn btn-success btn-fill" runat="server" Text="Ekle" OnClick="btnAddShelf_Click" />
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
                                <th>AltKategori</th>
                                <th>Raf Tasarım</th>
                                <th>Ekle</th>
                                <th>Sil</th>
                            </thead>
                            <tbody>
                                <%=raflar %>
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
                    <div id="shelfsArea" class="container" style="background-color: #bdbdbd; width: 100%; height: 400px;"></div>
                    <button id="submitButton" type="submit" class="btn btn-success btn-fill" style="float: right; margin-top: 10px;" onclick="getHtml()">Ekle</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
