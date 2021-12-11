<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BorrarAuto.aspx.cs" Inherits="WebApp_Autos.BorrarAuto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblPatente" runat="server" Text="Ingrese la patente a borrar"></asp:Label>
            <asp:TextBox ID="txtPatente" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btnBorrar" runat="server" OnClick="btnBorrar_Click" Text="Borrar" />
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        <asp:SqlDataSource ID="SqlAuto" runat="server" ConnectionString="<%$ ConnectionStrings:test3ConnectionString1 %>" DeleteCommand="delete from autos where patente=@patente" ProviderName="<%$ ConnectionStrings:test3ConnectionString1.ProviderName %>" SelectCommand="select foto from autos where patente=@patente">
            <DeleteParameters>
                <asp:Parameter Name="patente" />
            </DeleteParameters>
            <SelectParameters>
                <asp:Parameter Name="patente" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
