<%@ Page Title="Ürün İşlemleri" Language="C#" MasterPageFile="~/Panel.Master" AutoEventWireup="true" CodeBehind="ProductOperations.aspx.cs" Inherits="FindIt.ProductOperations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $("ul li").eq(0).addClass("active");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-md-8">
        <div class="card">
            <div class="header">
                <h4>Ürün İşlemleri</h4>
            </div>
            <div class="content">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ürün Ad</label>
                            <asp:TextBox ID="txtUrunAd" CssClass="form-control" runat="server" placeholder="Ürün Adı"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ürün Barkod</label>
                            <asp:TextBox ID="txtBarkod" CssClass="form-control" runat="server" placeholder="Ürün Barkodu"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ürün Fiyat</label>
                            <input type="number" name ="cost" class="form-control" min="0" value="<%=cost %>" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ürün Stok</label>
                            <input type="number" name ="stock" class="form-control" min="0" value="<%=stock %>" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Kategoriler</label>
                            <asp:DropDownList ID="DropDownListCategory" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownListCategory_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Alt Kategoriler</label>
                            <asp:DropDownList ID="DropDownListSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ürün Özellikleri</label>
                            <textarea class="form-control" placeholder="Ürün özelliklerini giriniz." name ="features" style="resize: none;" value="<%=features %>"></textarea>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ürün Görselleri</label>
                            <label class="btn btn-default" data-toggle="tooltip" title="İlk seçilen görsel anasayfada gözükür.">
                                <input id="singlePicture" type="file" name="singlePicture" accept="image/*" multiple>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card">
            <div class="header">
                <h4>İşlem</h4>
            </div>
            <div class="content">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="col-sm-10">
                            <div class="form-group">
                                <label>Barkod ile arama</label>
                                <input type="text" class="form-control" placeholder="Barkod giriniz." />
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <label></label>
                            <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-fill btn-info" Text="Ara" />
                        </div>
                        <div class="col-md-4">
                            <asp:Button ID="btnProductAdd" CssClass="btn btn-fill btn-success marbot-10" runat="server" Text="Ekle" Width="100" OnClick="btnProductAdd_Click" />
                            <asp:Button ID="btnProductDelete" CssClass="btn btn-fill btn-danger marbot-10" runat="server" Text="Sil" Width="100" />
                            <asp:Button ID="btnProductUpdate" CssClass="btn btn-fill btn-primary marbot-10" runat="server" Text="Güncelle" Width="100" />
                        </div>
                        <div class="col-md-8"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
