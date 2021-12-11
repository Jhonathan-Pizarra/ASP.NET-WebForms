<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarArticulos.aspx.cs" Inherits="WebApp_CRUDArticulos.ModificarArticulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="lblCodigoArticulo" runat="server" Text="Codigo del Articulo"></asp:Label>
            <asp:TextBox ID="txtCodigoArticulo" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnBuscarArticulo" runat="server" Text="Buscar" OnClick="btnBuscarArticulo_Click" />
        <p>
            <asp:Label ID="lblRespBusqueda" runat="server"></asp:Label>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataArticulos" runat="server" ConnectionString="Data Source=INUJHONATHAN\SQLEXPRESS01;Initial Catalog=test2;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT descripcion, precio, codigorubro FROM articulos WHERE (codigo = @codigo)" UpdateCommand="UPDATE articulos SET descripcion = @descripcion, precio = @precio, codigorubro = @codigorubro WHERE (codigo = @codigo)">
                <SelectParameters>
                    <asp:Parameter Name="codigo" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="descripcion" />
                    <asp:Parameter Name="precio" />
                    <asp:Parameter Name="codigorubro" />
                    <asp:Parameter Name="codigo" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion"></asp:Label>
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblPrecio" runat="server" Text="Precio"></asp:Label>
            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblRubro" runat="server" Text="Rubro"></asp:Label>
            <asp:DropDownList ID="cmbEscogerRubros" runat="server" DataTextField="descripcion" DataValueField="codigo">
            </asp:DropDownList>
        </p>
        <asp:Button ID="btnModificarArticulo" runat="server" Text="Modificar" OnClick="btnModificarArticulo_Click" />
        <p>
            <asp:Label ID="lblRespArticulo" runat="server"></asp:Label>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataRubros" runat="server" ConnectionString="Data Source=INUJHONATHAN\SQLEXPRESS01;Initial Catalog=test2;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT codigo, descripcion FROM rubros"></asp:SqlDataSource>
            <asp:HyperLink ID="lnkRetornar" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </p>


    </form>
</body>
</html>
