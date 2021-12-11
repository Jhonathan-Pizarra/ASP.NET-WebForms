<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacion.aspx.cs" Inherits="WebApp_CRUDUsuarios.modificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUsername" runat="server" Text="Nombre de usuario"></asp:Label>
            <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
        <asp:Label ID="lblResBusqueda" runat="server"></asp:Label>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Clave"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label4" runat="server" Text="Mail"></asp:Label>
        <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
            <asp:Label ID="lblRespModificar" runat="server"></asp:Label>
        </p>
        <p>
            <asp:HyperLink ID="lnkRetornar" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </p>
    </form>
</body>
</html>
