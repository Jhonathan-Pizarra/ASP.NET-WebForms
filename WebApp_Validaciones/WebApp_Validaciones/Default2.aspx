<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="WebApp_Validaciones.Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="lblEdades" runat="server" Text="Ingrese la edad (18-25)"></asp:Label>
            <asp:TextBox ID="txtEdades" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtEdades" ErrorMessage="RangeValidator" MaximumValue="25" MinimumValue="18" Type="Integer">Edad debe estar entre 18 y 25 años</asp:RangeValidator>
        </p>
        <p>
            <asp:Button ID="btnConfirmar2" runat="server" Text="Confirmar" />
        </p>
    </form>
</body>
</html>
