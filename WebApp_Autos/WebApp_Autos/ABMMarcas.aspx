<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABMMarcas.aspx.cs" Inherits="WebApp_Autos.ABMMarcas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlMarcas" EmptyDataText="No hay registros de datos para mostrar.">
                <Columns>
                    <asp:BoundField DataField="codigo" HeaderText="codigo" SortExpression="codigo" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <br />
            <asp:Label ID="lblMarca" runat="server" Text="Ingrese la marca"></asp:Label>
            <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>
            <br />
        </div>
        <asp:Button ID="btnCrearMarcas" runat="server" OnClick="btnCrearMarcas_Click" Text="Crear" />
        <br />
        <asp:SqlDataSource ID="SqlMarcas" runat="server" ConnectionString="<%$ ConnectionStrings:test3ConnectionString1 %>" InsertCommand="INSERT INTO [marcas] ([descripcion]) VALUES (@descripcion)" ProviderName="<%$ ConnectionStrings:test3ConnectionString1.ProviderName %>" SelectCommand="SELECT [codigo], [descripcion] FROM [marcas]">
            <InsertParameters>
                <asp:Parameter Name="descripcion" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
