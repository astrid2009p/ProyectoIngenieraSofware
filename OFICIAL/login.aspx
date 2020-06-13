<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        .auto-style2 {
            margin-right: 0px;
            margin-top: 69px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" Height="300px" ImageAlign="Top" ImageUrl="~/img.png" />
        </div>
    <table style="width:400px;">
        <tr>
            <td colspan="2">Iniciar Sesion</td>
        </tr>
        <tr>
            <td class="auto-style1">User:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtUser" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="218px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnEnviar" runat="server" Text="Iniciar Sesion" OnClick="btnEnviar_Click" />
               <br /> <asp:Label ID="l1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
