<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp_CRUDUsuarios2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="lnkAlta" runat="server" NavigateUrl="~/alta.aspx">Alta de usuario</asp:HyperLink>
        </div>
        <p>
            <asp:HyperLink ID="lnkConsulta" runat="server" NavigateUrl="~/consulta.aspx">Consulta Usuario</asp:HyperLink>
        </p>
        <asp:HyperLink ID="lnkModificar" runat="server" NavigateUrl="~/modificacion.aspx">Modificar Usuarios</asp:HyperLink>
        <p>
            <asp:HyperLink ID="lnkEliminar" runat="server" NavigateUrl="~/baja.aspx">Eliminar Usuarios</asp:HyperLink>
        </p>
    </form>
</body>
</html>
