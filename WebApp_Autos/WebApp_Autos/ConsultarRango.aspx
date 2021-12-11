<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarRango.aspx.cs" Inherits="WebApp_Autos.ConsultarRango" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblYearStart" runat="server" Text="Ingrese el año inicial"></asp:Label>
            <asp:TextBox ID="txtInicial" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="lblYearEnd" runat="server" Text="Ingrese el año final"></asp:Label>
        <asp:TextBox ID="txtFinal" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar Vehiculo" />
        </p>
        <asp:Label ID="lblResponse" runat="server"></asp:Label>
        <asp:SqlDataSource ID="SqlAutos" runat="server" ConnectionString="<%$ ConnectionStrings:test3ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:test3ConnectionString1.ProviderName %>" SelectCommand="select foto from autos where modelo&gt;=@modelo1 and modelo&lt;=@modelo2">
            <SelectParameters>
                <asp:Parameter Name="modelo1" />
                <asp:Parameter Name="modelo2" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
