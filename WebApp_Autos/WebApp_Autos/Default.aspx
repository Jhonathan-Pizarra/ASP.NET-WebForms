<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp_Autos.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="lnkMarcas" runat="server">ABM Marcas</asp:HyperLink>
        </div>
        <p>
            <asp:HyperLink ID="lnkAltaAutos" runat="server">Alta de autos</asp:HyperLink>
        </p>
        <asp:HyperLink ID="lnkPatente" runat="server">Consulta por patente</asp:HyperLink>
        <p>
            <asp:HyperLink ID="lnkMarca" runat="server">Consulta por marca</asp:HyperLink>
        </p>
        <asp:HyperLink ID="lnkBorrarAuto" runat="server">Borrado de auto</asp:HyperLink>
        <p>
            <asp:HyperLink ID="lnkAutosModelo" runat="server">Autos por modelo</asp:HyperLink>
        </p>
    </form>
</body>
</html>
