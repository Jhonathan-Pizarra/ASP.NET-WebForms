<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp_CRUDUsuarios.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:HyperLink ID="lnkAlta" runat="server" NavigateUrl="~/alta.aspx">Alta de Usuario</asp:HyperLink>
        </p>
        <asp:HyperLink ID="lnkConsultar" runat="server" NavigateUrl="~/consulta.aspx">Consulta de usuario</asp:HyperLink>
        <p>
            <asp:HyperLink ID="lnkBaja" runat="server" NavigateUrl="~/baja.aspx">Baja de usuario</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="lnkModificar" runat="server" NavigateUrl="~/modificacion.aspx">Modificacion de usuario</asp:HyperLink>
        </p>
    </form>
</body>
</html>
