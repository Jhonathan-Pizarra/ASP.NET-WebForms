<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MailPersistente.aspx.cs" Inherits="WebApp_Cookies.MailPersistente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMail" runat="server" Text="Ingrese su email"></asp:Label>
            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btnConfirmar" runat="server" OnClick="btnConfirmar_Click" Text="Confirmar" />
    </form>
</body>
</html>
