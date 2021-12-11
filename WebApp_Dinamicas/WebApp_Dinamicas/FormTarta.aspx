<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormTarta.aspx.cs" Inherits="WebApp_Dinamicas.FormTarta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="lblValor1" runat="server" Text="Ingrese el primer valor:"></asp:Label>
            <asp:TextBox ID="txtValor1" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="lblValor2" runat="server" Text="Imgrese el segundo valor:"></asp:Label>
        <asp:TextBox ID="txtValor2" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lblValor3" runat="server" Text="Ingrese el tercer valor:"></asp:Label>
            <asp:TextBox ID="txtValor3" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnTarta" runat="server" Text="Graficar" OnClick="btnTarta_Click" />
    </form>
</body>
</html>
