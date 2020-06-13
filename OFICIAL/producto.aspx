<%@ Page Language="C#" AutoEventWireup="true" CodeFile="producto.aspx.cs" Inherits="producto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="ORDEN DE PRODUCTO"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Tipo de producto"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlTipo" runat="server" AutoPostBack="True" DataSourceID="EntityDataSource1" DataTextField="Nombre" DataValueField="Nombre">
            <asp:ListItem> Seleccione</asp:ListItem>
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=issssEntities2" DefaultContainerName="issssEntities2" EnableFlattening="False" EntitySetName="producto" EntityTypeFilter="producto" Select="it.[Nombre]">
        </asp:EntityDataSource>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Cantidad(bolsas de 100 unidades)"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlCant" runat="server">
            <asp:ListItem> </asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Generar Orden" OnClick="Button1_Click" />
        <br />
        <br />

         <asp:Label ID="lblTipo" runat="server"></asp:Label>

        <asp:Label ID="lblCant" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="btnOrdenP" runat="server" Text="Enviar Orden a Proveedores" Visible="False" OnClick="btnOrdenP_Click" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="admin.aspx">Regresar a Pagina Principal</asp:HyperLink>
    </form>
</body>
</html>
