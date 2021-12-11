<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp_Archivos.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Carga.aspx">Cargar comentarios en libro</asp:HyperLink>
        </div>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Listado.aspx">Listado de Libro</asp:HyperLink>
    </form>
</body>
</html>
