<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarArticulos.aspx.cs" Inherits="WebApp_CRUDArticulos.ConsultarArticulos" %>

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
            <asp:HyperLink ID="lnkRetornar" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </p>
        <asp:SqlDataSource ID="SqlConsultaArticulo" runat="server" ConnectionString="Data Source=INUJHONATHAN\SQLEXPRESS01;Initial Catalog=test2;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="select ar.descripcion as descriarticulo, precio, ru.descripcion as descrirubro 
  from articulos as ar
  join rubros as ru on ru.codigo=ar.codigorubro
  where ar.codigo=@codigo">
            <SelectParameters>
                <asp:Parameter Name="codigo" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
