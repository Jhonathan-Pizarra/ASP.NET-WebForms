<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora3.aspx.cs" Inherits="WebApp_Calculadora.Calculadora3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblValor3" runat="server" Text="Valor #1"></asp:Label>
            <asp:TextBox ID="txtValor3" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="lblValor4" runat="server" Text="Valor #2"></asp:Label>
        <asp:TextBox ID="txtValor4" runat="server"></asp:TextBox>
        <p>
            <asp:RadioButton ID="rdSumar" runat="server" Text="Sumar" />
            <asp:RadioButton ID="rdRestar" runat="server" Text="Restar" />
        </p>
        <asp:Label ID="lblResp2" runat="server" Text="Respuesta:"></asp:Label>
        <asp:Label ID="lblMessage2" runat="server" Text="0"></asp:Label>
         <p>
            <asp:Button ID="btnSumar2" runat="server" OnClick="btnSumar2_Click" Text="Calcular" />
         </p>
    </form>
</body>
</html>
