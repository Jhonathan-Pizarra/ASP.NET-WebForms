<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alta.aspx.cs" Inherits="WebApp_CRUDUsuarios.alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblName" runat="server" Text="Nombre"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lblClave" runat="server" Text="Clave"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="lblMail" runat="server" Text="Mail"></asp:Label>
        <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnCrear" runat="server" OnClick="btnCrear_Click" Text="Crear" />
            <asp:Label ID="lblResponse" runat="server"></asp:Label>
        </p>
        <p>
            <asp:HyperLink ID="lnkRetornar" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </p>
    </form>
</body>
</html>
