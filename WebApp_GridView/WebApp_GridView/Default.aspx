<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp_GridView.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridRubros" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Caption="Mantenimiento Rubros" CellPadding="3" DataSourceID="SqlRubros" EmptyDataText="No hay registros de datos para mostrar." PageSize="5">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
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
            <asp:SqlDataSource ID="SqlRubros" runat="server" ConnectionString="<%$ ConnectionStrings:test2ConnectionString1 %>" DeleteCommand="DELETE FROM [rubros] WHERE [codigo] = @codigo" InsertCommand="INSERT INTO [rubros] ([descripcion]) VALUES (@descripcion)
" ProviderName="<%$ ConnectionStrings:test2ConnectionString1.ProviderName %>" SelectCommand="SELECT [codigo], [descripcion] FROM [rubros]" UpdateCommand="UPDATE [rubros] SET [descripcion] = @descripcion WHERE [codigo] = @codigo">
                <DeleteParameters>
                    <asp:Parameter Name="codigo" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="descripcion" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="descripcion" />
                    <asp:Parameter Name="codigo" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
