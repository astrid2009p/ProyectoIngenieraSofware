<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recolector.aspx.cs" Inherits="recolector" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="150px" ImageAlign="Right" ImageUrl="~/img.png" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Recolectores En el Sistema"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Astrid Palencia"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btbastrid" runat="server" Text="Asignar Ruta" OnClick="Button1_Click" />

            <asp:Button ID="Button4" runat="server" Text="Ver Rutas" OnClick="Button4_Click" />

            <br/>
            <asp:Label ID="Label3" runat="server" Text="Dua Lipa"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Asignar Ruta" />

            <asp:Button ID="Button5" runat="server" Text="Ver Rutas" />

            <br/>
           <asp:Label ID="Label14" runat="server" Text="Justin Botran"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Asignar Ruta" />

            <asp:Button ID="Button6" runat="server" Text="Ver Rutas" />

        </div>
    </form>
</body>
</html>
