<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp_Catalogo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblArchivos" runat="server" Text="Seleccione un archivo a subir"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        <asp:Button ID="btnConfirmar" runat="server" OnClick="btnConfirmar_Click" Text="Confirmar" />
        <asp:Label ID="lblRespuesta" runat="server"></asp:Label>
        <p>
            <asp:Label ID="lblTamanio" runat="server" Text="Tamaño en Bytes"></asp:Label>
        </p>
        <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
        <p>
            <asp:Label ID="lblTipo" runat="server" Text="Tipo"></asp:Label>
        </p>
    </form>
</body>
</html>
