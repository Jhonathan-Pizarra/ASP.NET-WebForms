<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carga.aspx.cs" Inherits="WebApp_Archivos.Carga" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblName" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="lblCountry" runat="server" Text="Pais"></asp:Label>
        <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lblComment" runat="server" Text="Comentarios"></asp:Label>
        </p>
        <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine"></asp:TextBox>
        <p>
            <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirmar" />
            <asp:Label ID="lblResponse" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:HyperLink ID="lnkReturn" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
    </form>
</body>
</html>
