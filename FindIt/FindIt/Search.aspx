<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="FindIt.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Arama</title>
    <link href="FlatlyTheme/bootstrap.css" rel="stylesheet" />
    <link href="FlatlyTheme/bootstrap.min.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />
</head>
<body style="background: linear-gradient(to bottom, #ccffff 0%, #ffffff 64%); overflow: hidden;" >
    <form id="form1" runat="server">
        <div class="container" style="margin: 300px auto;">
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6 text-center">
                    <div class="form-group ">
                        <input class="form-control input-lg" id="inputlg" type="text" placeholder="Aradığınız ürünü buraya yazın." />
                    </div>
                    <asp:Button ID="btnSearch" CssClass="btn btn-success" runat="server" Text="Ara" Width="200" />
                </div>
                <div class="col-lg-3"></div>
            </div>
        </div>
    </form>
</body>
</html>
