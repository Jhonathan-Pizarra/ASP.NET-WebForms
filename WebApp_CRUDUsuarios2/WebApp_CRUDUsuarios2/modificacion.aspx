<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacion.aspx.cs" Inherits="WebApp_CRUDUsuarios2.modificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="lblUsername" runat="server" Text="Nombre de usuario"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
        <asp:Label ID="lblSearch" runat="server"></asp:Label>
        <p>
            <asp:Label ID="lblPassword" runat="server" Text="Clave"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="lblMail" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
            <asp:Label ID="lblUdpate" runat="server"></asp:Label>
        </p>
        <p>
            <asp:HyperLink ID="lnkRetornar" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </p>
        <asp:SqlDataSource ID="SqlUpdate" runat="server" ConnectionString="Data Source=INUJHONATHAN\SQLEXPRESS01;Initial Catalog=test1;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT clave, mail FROM usuarios WHERE (nombre = @nombre)" UpdateCommand="UPDATE usuarios SET clave = @clave, mail = @mail WHERE (nombre = @nombre)">
            <SelectParameters>
                <asp:Parameter Name="nombre" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre" />
                <asp:Parameter Name="clave" />
                <asp:Parameter Name="mail" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
