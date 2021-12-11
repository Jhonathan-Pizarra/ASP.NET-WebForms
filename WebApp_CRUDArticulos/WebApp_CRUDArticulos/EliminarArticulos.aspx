<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarArticulos.aspx.cs" Inherits="WebApp_CRUDArticulos.EliminarArticulos" %>

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
        <asp:Button ID="btnBorrarArticulo" runat="server" Text="Borrar" OnClick="btnBorrarArticulo_Click" style="height: 29px" />
        <p>
            <asp:Label ID="lblRespEliminacion" runat="server"></asp:Label>
        </p>
        <p>
            <asp:HyperLink ID="lnkRetornar" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </p>
         <asp:SqlDataSource ID="SqlBorrarArticulo" runat="server" ConnectionString="Data Source=INUJHONATHAN\SQLEXPRESS01;Initial Catalog=test2;Integrated Security=True" DeleteCommand="delete from articulos where codigo=@codigo" ProviderName="System.Data.SqlClient">
             <DeleteParameters>
                 <asp:Parameter Name="codigo" />
             </DeleteParameters>
         </asp:SqlDataSource>
    </form>
</body>
</html>
