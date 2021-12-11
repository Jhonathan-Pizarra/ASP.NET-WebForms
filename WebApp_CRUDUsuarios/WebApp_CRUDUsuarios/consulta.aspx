<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consulta.aspx.cs" Inherits="WebApp_CRUDUsuarios.consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblUsername" runat="server" Text="Ingrese el nombre del usuario"></asp:Label>
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnConsultar" runat="server" OnClick="btnConsultar_Click" Text="Buscar" />
        </p>
        <asp:Label ID="lblResponse" runat="server"></asp:Label>
        <p>
            <asp:HyperLink ID="lnkRetornar" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </p>
    </form>
</body>
</html>
