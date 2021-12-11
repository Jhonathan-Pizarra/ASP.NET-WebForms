<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp_Inscripcion.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 86px;
            margin-left: 175px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="lblUsername" runat="server" Text="Nombre de usuario" Width="170px"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" Width="200px"></asp:TextBox>
            <asp:Label ID="lblError1" runat="server"></asp:Label>
        </p>
        <asp:Label ID="lblPassword" runat="server" Text="Clave" Width="170px"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <asp:Label ID="lblError2" runat="server"></asp:Label>
        <p>
            <asp:Label ID="lblConfirm" runat="server" Text="Repita la clave" Width="170px"></asp:Label>
            <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox>
            <asp:Label ID="lblError3" runat="server"></asp:Label>
        </p>
        <asp:Label ID="lblEmail" runat="server" Text="Correo Electrónico" Width="170px"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" Width="300px"></asp:TextBox>
        <asp:Label ID="lblError4" runat="server"></asp:Label>
        <p>
            <asp:Label ID="lblLastName" runat="server" Text="Apellido" Width="170px"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" Width="240px"></asp:TextBox>
            <asp:Label ID="lblError5" runat="server"></asp:Label>
        </p>
        <asp:Label ID="lblName" runat="server" Text="Nombre" Width="170px"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" Width="240px"></asp:TextBox>
        <asp:Label ID="lblError6" runat="server"></asp:Label>
        <p>
            <asp:Label ID="lblCountry" runat="server" Text="País de origen" Width="170px"></asp:Label>
            <asp:DropDownList ID="cbxCountry" runat="server">
                <asp:ListItem>Ecuador</asp:ListItem>
                <asp:ListItem>Argentina</asp:ListItem>
                <asp:ListItem>Colobia</asp:ListItem>
                <asp:ListItem>México</asp:ListItem>
                <asp:ListItem>Costa Rica</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="lblError7" runat="server"></asp:Label>
        </p>
        <asp:Label ID="lblProvince" runat="server" Text="Provincia" Width="170px"></asp:Label>
        <asp:TextBox ID="txtProvince" runat="server"></asp:TextBox>
        <asp:Label ID="lblError8" runat="server"></asp:Label>
        <p>
            <asp:Label ID="lblCode" runat="server" Text="Código Postal" Width="170px"></asp:Label>
            <asp:TextBox ID="txtCode" runat="server" Width="110px"></asp:TextBox>
            <asp:Label ID="lblError9" runat="server"></asp:Label>
        </p>
        <asp:Label ID="lblSex" runat="server" Text="Sexo" Width="170px"></asp:Label>
        <asp:RadioButton ID="rdoMan" runat="server" Text="Hombre" GroupName="groupSex" />
        <asp:RadioButton ID="rdoWoman" runat="server" Text="Mujer" GroupName="groupSex" />
        <asp:Label ID="lblError10" runat="server"></asp:Label>
        <p>
            <asp:Label ID="lblBirthday" runat="server" Text="Fecha de Nacimiento (dd/mm/aa)" Width="170px"></asp:Label>
            <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>
            <asp:Label ID="lblError11" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblComment" runat="server" Text="Comentarios" Width="170px"></asp:Label>
            <textarea id="txtComent" cols="35" name="S1" rows="10"></textarea></p>
        <asp:Label ID="lblTerms" runat="server" Text="Acepto los términos y condiciones" Width="170px"></asp:Label>
        <asp:CheckBox ID="cbxAccept" runat="server" Text="Acepto" />
        <asp:Label ID="lblError12" runat="server"></asp:Label>
        <br />
        <p class="auto-style1">
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Aceptar" />
        </p>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </form>
</body>
</html>
