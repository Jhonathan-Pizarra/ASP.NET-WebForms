<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SesionUsuario.aspx.cs" Inherits="WebApp_Cookies.SesionUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUsers" runat="server" Text="Usuario"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="lblPassword" runat="server" Text="Contraseña"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnConfirmar" runat="server" OnClick="btnConfirmar_Click" Text="Confirmar" />
        </p>
    </form>
</body>
</html>
