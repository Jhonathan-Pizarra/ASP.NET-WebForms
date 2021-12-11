<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default5.aspx.cs" Inherits="WebApp_Validaciones.Default5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMail" runat="server" Text="Ingrese su correo"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[a-zA-Z0-9.!#$%&amp;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$">El email no es válido</asp:RegularExpressionValidator>
        </div>
        <asp:Button ID="btnConfirmMail" runat="server" OnClick="btnConfirmMail_Click" Text="Confirmar" />
    </form>
</body>
</html>
