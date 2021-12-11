<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatosSesion.aspx.cs" Inherits="WebApp_Cookies.DatosSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label1" runat="server" Text="Los datos de sesión almacenados son:"></asp:Label>
        </p>
        <asp:Label ID="lblUsername" runat="server"></asp:Label>
        <p>
            <asp:Label ID="lblPassword" runat="server"></asp:Label>
        </p>
        <asp:HyperLink ID="lnkPagina2" runat="server" NavigateUrl="~/Pagina2.aspx">Ir a siguiente página</asp:HyperLink>
    </form>
</body>
</html>
