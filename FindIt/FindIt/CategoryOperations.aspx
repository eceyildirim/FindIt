<%@ Page Title="Kategori - Altkategori İşlemleri" Language="C#" MasterPageFile="~/Panel.Master" AutoEventWireup="true" CodeBehind="CategoryOperations.aspx.cs" Inherits="FindIt.CategoryOperations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $("ul li").eq(1).addClass("active");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="col-md-6">
        <div class="card">
            <div class="header">
                <h4 class="title">Kategori İşlemleri</h4>
            </div>
            <div class="content">
                <div class="row">
                    <div class="col-md-3">
                        <label>Kategori Adı</label>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <asp:TextBox ID="txtCategoryName" CssClass="form-control" runat="server" placeholder="Kategori Adı"></asp:TextBox>
                            <asp:Label ID="Label_Error" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <asp:Button ID="btnCategoryAdd" CssClass="btn btn-success btn-fill pull-right" runat="server" Text="Ekle" OnClick="btnCategoryAdd_Click" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-3">
                        <label>Kategoriler</label>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <asp:DropDownList ID="DropDownListCategories" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:Label ID="Label_ErrorDelete" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <asp:Button ID="btnCategoryDelete" CssClass="btn btn-danger btn-fill pull-right" runat="server" Text="Sil" OnClick="btnCategoryDelete_Click" />
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="card">
            <div class="header">
                <h4 class="title">Alt Kategori İşlemleri</h4>
            </div>
            <div class="content">
                <div class="row">
                    <div class="col-md-3">
                        <label>Alt Kategori Adı</label>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <asp:TextBox ID="txtAltKategori" CssClass="form-control" placeholder="Alt Kategori adı giriniz." runat="server"></asp:TextBox>
                            <asp:Label ID="Label_SubCategoryError" runat="server" Text="Label" Visible="False" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <label>Kategori Adı</label>
                    </div>
                    <div class="col-md-5">
                        <asp:DropDownList ID="DropDownListCategoryforSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <asp:Button ID="btnSubCategoryAdd" CssClass="btn btn-success btn-fill pull-right" runat="server" Text="Ekle" OnClick="btnSubCategoryAdd_Click" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-3">
                        <label>Alt Kategoriler</label>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <asp:DropDownList ID="DropDownListSubCategoryDelete" CssClass="form-control" runat="server"  OnSelectedIndexChanged="DropDownListSubCategoryDelete_SelectedIndexChanged"></asp:DropDownList>
                            <asp:Label ID="Label_Category" runat="server" ForeColor="#666666" Font-Bold="True"></asp:Label>
                             <asp:Label ID="Label_SubCategoriesDeleteError" runat="server" Visible="False" Font-Bold="True" ForeColor="Red"></asp:Label>                            
                        </div>
                    </div>
                    <div class="col-md-4">
                        <asp:Button ID="btnSubCategoryDelete" CssClass="btn btn-danger btn-fill pull-right" runat="server" Text="Sil" OnClick="btnSubCategoryDelete_Click" />
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

</asp:Content>
