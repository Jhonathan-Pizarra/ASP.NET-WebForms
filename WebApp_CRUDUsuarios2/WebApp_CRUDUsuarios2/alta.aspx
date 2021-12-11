<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alta.aspx.cs" Inherits="WebApp_CRUDUsuarios2.alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="lblName" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="lblPassword" runat="server" Text="Clave"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lblMail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnCreate" runat="server" Text="Crear" OnClick="btnCreate_Click" />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <p>
            <asp:HyperLink ID="lnkRetornar" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </p>
        <asp:SqlDataSource ID="SqlConection" runat="server" ConnectionString="Data Source=INUJHONATHAN\SQLEXPRESS01;Initial Catalog=test1;Integrated Security=True" InsertCommand="INSERT INTO usuarios(nombre, clave, mail) VALUES (@nombre, @clave, @mail)" ProviderName="System.Data.SqlClient">
            <InsertParameters>
                <asp:Parameter Name="nombre" />
                <asp:Parameter Name="clave" />
                <asp:Parameter Name="mail" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
