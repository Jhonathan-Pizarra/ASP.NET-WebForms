<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consulta.aspx.cs" Inherits="WebApp_CRUDUsuarios2.consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="lblUsername" runat="server" Text="Ingresar nombre de usuario"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
        <p>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </p>
        <p>
            <asp:HyperLink ID="lnkRetornar" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </p>
        <asp:SqlDataSource ID="SqlConsulta" runat="server" ConnectionString="Data Source=INUJHONATHAN\SQLEXPRESS01;Initial Catalog=test1;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT clave, mail FROM usuarios WHERE (nombre = @nombre)">
            <SelectParameters>
                <asp:Parameter Name="nombre" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
