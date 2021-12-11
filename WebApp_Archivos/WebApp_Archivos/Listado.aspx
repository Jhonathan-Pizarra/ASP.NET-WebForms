<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listado.aspx.cs" Inherits="WebApp_Archivos.Listado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMessage" runat="server" Text="Mensaje"></asp:Label>
        </div>
        <p>
            <asp:HyperLink ID="lnkReturn" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </p>
    </form>
</body>
</html>
