<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EdadPersistente.aspx.cs" Inherits="WebApp_Cookies.Persistente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblCookieEdad" runat="server" Text="Valor de la cookie - edad:"></asp:Label>
        <asp:TextBox ID="txtCookieEdad" runat="server"></asp:TextBox>
        <div>
            <asp:Button ID="btnCrearCookie" runat="server" OnClick="btnCrearCookie_Click" Text="Crear Cookie" />
            <asp:Label ID="lblRespuesta" runat="server"></asp:Label>
        </div>
        <asp:HyperLink ID="lnkCookieEdad" runat="server" NavigateUrl="~/VerEdadPersistente.aspx">Ver Cookie</asp:HyperLink>
    </form>
</body>
</html>
