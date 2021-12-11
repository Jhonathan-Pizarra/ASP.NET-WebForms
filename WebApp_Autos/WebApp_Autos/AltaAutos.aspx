<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaAutos.aspx.cs" Inherits="WebApp_Autos.AltaAutos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblPatente" runat="server" Text="Patente"></asp:Label>
            <asp:TextBox ID="txtPatente" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="lblPropietario" runat="server" Text="Propietario"></asp:Label>
        <asp:TextBox ID="txtPropietario" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lblPrecio" runat="server" Text="Precio"></asp:Label>
            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="lblModelo" runat="server" Text="Modelo"></asp:Label>
        <asp:TextBox ID="txtModelo" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lblMarca" runat="server" Text="Marca"></asp:Label>
            <asp:DropDownList ID="cmbMarca" runat="server" DataSourceID="SqlMarcas" DataTextField="descripcion" DataValueField="codigo">
            </asp:DropDownList>
        </p>
        <asp:Label ID="lblFoto" runat="server" Text="Foto"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <p>
            <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Crear" />
            <asp:Label ID="lblResponse" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:SqlDataSource ID="SqlAutos" runat="server" ConnectionString="<%$ ConnectionStrings:test3ConnectionString1 %>" InsertCommand="INSERT INTO autos(patente, propietario, precio, modelo, foto, codigomarca) VALUES (@patente, @propietario, @precio, @modelo, @foto, @codigomarca)" ProviderName="<%$ ConnectionStrings:test3ConnectionString1.ProviderName %>">
            <InsertParameters>
                <asp:Parameter Name="patente" />
                <asp:Parameter Name="propietario" />
                <asp:Parameter Name="precio" />
                <asp:Parameter Name="modelo" />
                <asp:Parameter Name="foto" />
                <asp:Parameter Name="codigomarca" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlMarcas" runat="server" ConnectionString="<%$ ConnectionStrings:test3ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:test3ConnectionString1.ProviderName %>" SelectCommand="SELECT codigo, descripcion FROM marcas"></asp:SqlDataSource>
    </form>
</body>
</html>
