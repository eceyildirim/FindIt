<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="FindIt.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Arama</title>
    <link href="FlatlyTheme/bootstrap.css" rel="stylesheet" />
    <link href="FlatlyTheme/bootstrap.min.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />
    <link rel="icon" href="Images/finditlogo.png" type="image/png"/>
</head>
<body class="body-costumer">
    <form id="form1" runat="server">
        <div class="container" style="margin: 300px auto;">
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6 text-center">
                    <div class="row">
                        <asp:Image ID="Image1" runat="server" ImageUrl="Images/finditlogo.png" Height="300" Width="500" />
                    </div>
                    <div class="form-group ">
                        <input type="text" class="form-control input-lg" id="inputlg" name="search"  placeholder="Aradığınız ürünü buraya yazın" />
                    </div>
                    <asp:Button ID="btnSearch" CssClass="btn btn-success" runat="server" Text="Ara" Width="200" OnClick="btnSearch_Click" />
                </div>
                <div class="col-lg-3"></div>
            </div>
        </div>
    </form>
</body>
</html>
