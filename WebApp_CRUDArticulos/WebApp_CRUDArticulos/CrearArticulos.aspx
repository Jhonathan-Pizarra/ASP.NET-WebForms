<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearArticulos.aspx.cs" Inherits="WebApp_CRUDArticulos.CrearArticulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <p>
            <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion"></asp:Label>
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblPrecio" runat="server" Text="Precio"></asp:Label>
            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblRubro" runat="server" Text="Rubro"></asp:Label>
            <asp:DropDownList ID="cmbRubros" runat="server" DataSourceID="SqlEscogerRubros" DataTextField="descripcion" DataValueField="codigo">
            </asp:DropDownList>
        </p>
        <asp:Button ID="btnCrearArticulo" runat="server" Text="Crear" OnClick="btnCrearArticulo_Click" />
        <p>
            <asp:Label ID="lblRespArticulo" runat="server"></asp:Label>
        </p>
         <p>
             <asp:HyperLink ID="lnkRetornar" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
         </p>
         <asp:SqlDataSource ID="SqlEscogerRubros" runat="server" ConnectionString="Data Source=INUJHONATHAN\SQLEXPRESS01;Initial Catalog=test2;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT codigo , descripcion FROM rubros"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlCrearArticulo" runat="server" ConnectionString="Data Source=INUJHONATHAN\SQLEXPRESS01;Initial Catalog=test2;Integrated Security=True" InsertCommand="INSERT INTO articulos(descripcion, precio, codigorubro) VALUES (@descripcion, @precio, @codigorubro)" ProviderName="System.Data.SqlClient">
             <InsertParameters>
                 <asp:Parameter Name="descripcion" />
                 <asp:Parameter Name="precio" />
                 <asp:Parameter Name="codigorubro" />
             </InsertParameters>
         </asp:SqlDataSource>
         <br />
    </form>
</body>
</html>
