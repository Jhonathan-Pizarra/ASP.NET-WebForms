<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora2.aspx.cs" Inherits="WebApp_Calculadora.Calculadora2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblValor1" runat="server" Text="Valor #1"></asp:Label>
            <asp:TextBox ID="txtValor1" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="lblValor2" runat="server" Text="Valor #2"></asp:Label>
        <asp:TextBox ID="txtValor2" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnSumar" runat="server" OnClick="btnSumar_Click" Text="Sumar" />
        </p>
        <asp:Label ID="lblResp" runat="server" Text="Respuesta:"></asp:Label>
        <asp:Label ID="lblMessage" runat="server" Text="0"></asp:Label>
    </form>
</body>
</html>
