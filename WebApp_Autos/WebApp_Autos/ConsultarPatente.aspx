<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarPatente.aspx.cs" Inherits="WebApp_Autos.ConsultarPatente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblPatente" runat="server" Text="Ingresa la patente"></asp:Label>
            <asp:TextBox ID="txtPatente" runat="server"></asp:TextBox>
            <br />
        </div>
        <asp:Button ID="btnTraer" runat="server" OnClick="btnTraer_Click" Text="Traer" />
        <p>
            <asp:Image ID="Image1" runat="server" Height="200px" Width="300px" />
        </p>
        <p>
            <asp:Label ID="lblResponse" runat="server"></asp:Label>
        </p>
        <asp:SqlDataSource ID="SqlPatente" runat="server" ConnectionString="<%$ ConnectionStrings:test3ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:test3ConnectionString1.ProviderName %>" SelectCommand="SELECT au.propietario, au.precio, au.modelo, au.foto, ma.descripcion FROM autos AS au INNER JOIN marcas AS ma ON au.codigomarca = ma.codigo WHERE (au.patente = @patente)">
            <SelectParameters>
                <asp:Parameter Name="patente" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
