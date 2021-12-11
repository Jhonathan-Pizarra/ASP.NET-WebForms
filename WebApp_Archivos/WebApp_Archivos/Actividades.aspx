<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Actividades.aspx.cs" Inherits="WebApp_Archivos.Actividades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="calendarAgend" runat="server" Height="310px" OnSelectionChanged="calendarAgend_SelectionChanged" Width="595px"></asp:Calendar>
        </div>
        <asp:TextBox ID="txtCalendar" runat="server" Height="163px" TextMode="MultiLine" Width="587px"></asp:TextBox>
        <p>
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Guardar" />
        </p>
    </form>
</body>
</html>
