<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="WebApp_Validaciones.Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUsername3" runat="server" Text="Nombre de usuario"></asp:Label>
            <asp:TextBox ID="txtUsername3" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="lblPassword" runat="server" Text="Clave"></asp:Label>
        <p>
            <asp:TextBox ID="txtPasswrod" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="lblRepetirClave3" runat="server" Text="Repetir clave"></asp:Label>
        <p>
            <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPasswrod" ControlToValidate="txtConfirmPassword" ErrorMessage="CompareValidator">Las claves no son iguales</asp:CompareValidator>
        </p>
        <asp:Button ID="btnConfirmar3" runat="server" OnClick="btnConfirmar3_Click" Text="Confirmar" />
    </form>
</body>
</html>
