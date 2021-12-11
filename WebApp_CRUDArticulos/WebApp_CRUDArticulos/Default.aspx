<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp_CRUDArticulos.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:HyperLink ID="lnkRubros" runat="server" NavigateUrl="~/CrearRubros.aspx">Crear Rubros</asp:HyperLink>
        </p>
        <asp:HyperLink ID="lnkArticulos" runat="server" NavigateUrl="~/CrearArticulos.aspx">Crear Articulos</asp:HyperLink>
        <p>
            <asp:HyperLink ID="lnkCrearArticulos" runat="server" NavigateUrl="~/ConsultarArticulos.aspx">Consultar Articulos</asp:HyperLink>
        </p>
        <asp:HyperLink ID="lnkEliminarArticulos" runat="server" NavigateUrl="~/EliminarArticulos.aspx">Eliminar Articulos</asp:HyperLink>
        <p>
            <asp:HyperLink ID="lnkModificarArticulos" runat="server" NavigateUrl="~/ModificarArticulos.aspx">Modificar Articulos</asp:HyperLink>
        </p>
    </form>
</body>
</html>
