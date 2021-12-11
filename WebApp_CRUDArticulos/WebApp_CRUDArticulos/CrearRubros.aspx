<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearRubros.aspx.cs" Inherits="WebApp_CRUDArticulos.CrearRubros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="lblRubro" runat="server" Text="Nombre del rubro"></asp:Label>
            <asp:TextBox ID="txtRubro" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnCrearRubro" runat="server" Text="Crear" OnClick="btnCrearRubro_Click" style="height: 29px" />
        <p>
            <asp:Label ID="lblRespRubro" runat="server"></asp:Label>
        </p>
        <asp:HyperLink ID="lnkRetornar" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        <asp:SqlDataSource ID="SqlRubro" runat="server" ConnectionString="Data Source=INUJHONATHAN\SQLEXPRESS01;Initial Catalog=test2;Integrated Security=True" InsertCommand="INSERT INTO rubros(descripcion) VALUES (@descripcion)" ProviderName="System.Data.SqlClient">
            <InsertParameters>
                <asp:Parameter Name="descripcion" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
