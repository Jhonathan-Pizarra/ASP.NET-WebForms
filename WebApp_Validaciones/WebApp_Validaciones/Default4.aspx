<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default4.aspx.cs" Inherits="WebApp_Validaciones.Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMultiplo4" runat="server" Text="Ingrese un multiplo de 5"></asp:Label>
            <asp:TextBox ID="txtMultiplo5" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtMultiplo5" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate">No es multiplo de 5</asp:CustomValidator>
        </div>
        <asp:Button ID="btnConfirmar4" runat="server" OnClick="btnConfirmar4_Click" Text="Confirmar" />
    </form>
</body>
</html>
