<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contador.aspx.cs" Inherits="WebApp_Archivos.Contador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblContador" runat="server" Text="Contador:"></asp:Label>
            <asp:Label ID="lblResultado" runat="server" Text="0"></asp:Label>
        </div>
    </form>
</body>
</html>
