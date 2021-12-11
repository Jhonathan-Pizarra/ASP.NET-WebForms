<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baja.aspx.cs" Inherits="WebApp_CRUDUsuarios2.baja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <p>
            <asp:Label ID="lblUsername" runat="server" Text="Ingresar nombre de usuario"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnBorrar" runat="server" OnClick="btnBorrar_Click" Text="Borrar" />
        <p>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </p>
        <p>
            <asp:HyperLink ID="lnkRetornar" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </p>
         <asp:SqlDataSource ID="SqlDelete" runat="server" ConnectionString="Data Source=INUJHONATHAN\SQLEXPRESS01;Initial Catalog=test1;Integrated Security=True" DeleteCommand="DELETE FROM usuarios where nombre=@nombre" ProviderName="System.Data.SqlClient">
             <DeleteParameters>
                 <asp:Parameter Name="nombre" />
             </DeleteParameters>
         </asp:SqlDataSource>
    </form>
</body>
</html>
