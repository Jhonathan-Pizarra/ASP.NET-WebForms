<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp_MultipleGrid.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Caption="Tabla Artículos" CellPadding="4" DataSourceID="SqlArticulos" EmptyDataText="No hay registros de datos para mostrar." ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
                    <asp:BoundField DataField="descriarticulo" HeaderText="descriarticulo" SortExpression="descriarticulo" />
                    <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                    <asp:BoundField DataField="descrirubro" HeaderText="descrirubro" SortExpression="descrirubro" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlArticulos" runat="server" ConnectionString="<%$ ConnectionStrings:test2ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:test2ConnectionString1.ProviderName %>" SelectCommand="SELECT ar.codigo, 
       ar.descripcion as descriarticulo,
       precio, 
       ru.descripcion as descrirubro 
  from articulos as ar
  join rubros as ru on ru.codigo=ar.codigorubro"></asp:SqlDataSource>
        </div>
        <asp:Label ID="lblResponse" runat="server" Text="Precio:"></asp:Label>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </form>
</body>
</html>
