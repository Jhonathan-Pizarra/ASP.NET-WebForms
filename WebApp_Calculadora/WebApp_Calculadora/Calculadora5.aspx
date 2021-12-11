<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora5.aspx.cs" Inherits="WebApp_Calculadora.Calculadora5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblValor7" runat="server" Text="Valor #1"></asp:Label>
            <asp:TextBox ID="txtValor7" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="lblValor8" runat="server" Text="Valor #2"></asp:Label>
        <asp:TextBox ID="txtValor8" runat="server"></asp:TextBox>
         <p>
             <asp:ListBox ID="lstOperaciones" runat="server">
                 <asp:ListItem>Sumar</asp:ListItem>
                 <asp:ListItem>Restar</asp:ListItem>
                 <asp:ListItem>Multiplicar</asp:ListItem>
                 <asp:ListItem>Dividir</asp:ListItem>
             </asp:ListBox>
         </p>
         <p>
            <asp:Button ID="btnSumar4" runat="server" OnClick="btnSumar4_Click" Text="Calcular" />
         </p>
        <p>
        <asp:Label ID="lblResp4" runat="server" Text="Respuesta:"></asp:Label>
        <asp:Label ID="lblMessage4" runat="server" Text="0"></asp:Label>
         </p>
    </form>
</body>
</html>
