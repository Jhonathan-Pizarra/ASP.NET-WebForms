<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioCaptcha.aspx.cs" Inherits="WebApp_Dinamicas.FormularioCaptcha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="40px" ImageUrl="~/Captcha.aspx" Width="100px" />
        </div>
        <asp:Label ID="lblCode" runat="server" Text="Ingrese el código de verificacion"></asp:Label>
        <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnVerificar" runat="server" OnClick="btnVerificar_Click" Text="Verificar" />
            <asp:Label ID="lblRespuesta" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
