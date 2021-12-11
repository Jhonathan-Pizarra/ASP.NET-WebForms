<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora6.aspx.cs" Inherits="WebApp_Calculadora.Calculadora6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblValor9" runat="server" Text="Valor #1"></asp:Label>
            <asp:TextBox ID="txtValor9" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="lblValor10" runat="server" Text="Valor #2"></asp:Label>
        <asp:TextBox ID="txtValor10" runat="server"></asp:TextBox>
         <p>
             <asp:DropDownList ID="cbxOperaciones" runat="server">
                 <asp:ListItem>Sumar</asp:ListItem>
                 <asp:ListItem>Restar</asp:ListItem>
                 <asp:ListItem>Multiplicar</asp:ListItem>
                 <asp:ListItem>Dividir</asp:ListItem>
             </asp:DropDownList>
         </p>
         <p>
            <asp:Button ID="btnSumar5" runat="server" OnClick="btnSumar5_Click" Text="Calcular" />
         </p>
        <p>
        <asp:Label ID="lblResp5" runat="server" Text="Respuesta:"></asp:Label>
        <asp:Label ID="lblMessage5" runat="server" Text="0"></asp:Label>
         </p>
    </form>
</body>
</html>
