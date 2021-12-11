<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora4.aspx.cs" Inherits="WebApp_Calculadora.Calculadora4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblValor5" runat="server" Text="Valor #1"></asp:Label>
            <asp:TextBox ID="txtValor5" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="lblValor6" runat="server" Text="Valor #2"></asp:Label>
        <asp:TextBox ID="txtValor6" runat="server"></asp:TextBox>
        <p>
            <asp:CheckBox ID="chkSumar" runat="server" Text="Sumar" />
        </p>
         <asp:CheckBox ID="chkResta" runat="server" Text="Resta" />
         <p>
            <asp:Button ID="btnSumar3" runat="server" OnClick="btnSumar3_Click" Text="Calcular" />
         </p>
         <p>
        <asp:Label ID="lblResp3" runat="server" Text="Respuesta:"></asp:Label>
        <asp:Label ID="lblMessage3" runat="server" Text="0"></asp:Label>
         </p>
    </form>
</body>
</html>
