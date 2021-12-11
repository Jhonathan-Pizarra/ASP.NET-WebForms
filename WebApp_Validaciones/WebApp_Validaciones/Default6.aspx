<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default6.aspx.cs" Inherits="WebApp_Validaciones.Default6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblUsername" runat="server" Text="Usuario:"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Debe ingresar un nombre">*</asp:RequiredFieldValidator>
        <div>
        </div>
        <asp:Label ID="lblPassword" runat="server" Text="Clave"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Debe ingresar clave">*</asp:RequiredFieldValidator>
        <p>
            <asp:Button ID="btnConfirm" runat="server" OnClick="Button1_Click" Text="Confirmar" />
        </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
