<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp_Validaciones.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUsername" runat="server" Text="Ingresar nombre de usuario"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validateUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="RequiredFieldValidator">Debe ingresar un nombre de usuario</asp:RequiredFieldValidator>
        </div>
        <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar" />
    </form>
</body>
</html>
