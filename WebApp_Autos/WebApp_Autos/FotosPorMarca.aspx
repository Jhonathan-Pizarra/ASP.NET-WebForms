<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FotosPorMarca.aspx.cs" Inherits="WebApp_Autos.FotosPorMarca" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMarca" runat="server" Text="Seleccione la marca"></asp:Label>
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlMarcas" DataTextField="descripcion" DataValueField="codigo">
        </asp:DropDownList>
        <p>
            <asp:Button ID="btnMostar" runat="server" OnClick="btnMostar_Click" Text="Mostrar" />
        </p>
        <asp:Label ID="lblRespuesta" runat="server"></asp:Label>
        <asp:SqlDataSource ID="SqlMarcas" runat="server" ConnectionString="<%$ ConnectionStrings:test3ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:test3ConnectionString1.ProviderName %>" SelectCommand="SELECT codigo, descripcion FROM marcas"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlAutos" runat="server" ConnectionString="<%$ ConnectionStrings:test3ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:test3ConnectionString1.ProviderName %>" SelectCommand="select foto from autos where codigomarca=@codigomarca">
            <SelectParameters>
                <asp:Parameter Name="codigomarca" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
