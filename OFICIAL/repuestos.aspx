<%@ Page Language="C#" AutoEventWireup="true" CodeFile="repuestos.aspx.cs" Inherits="repuestos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label10" runat="server" Text="ORDEN DE REPUESTOS"></asp:Label>
             <br />
             <br />
             <asp:Label ID="Label3" runat="server" Text="Tipo de REPUESTO"></asp:Label>

        </div>
        <asp:DropDownList ID="ddlRep" runat="server" DataSourceID="EntityDataSource1" DataTextField="TipoRepuesto" DataValueField="TipoRepuesto">
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=issssEntities3" DefaultContainerName="issssEntities3" EnableFlattening="False" EntitySetName="repuestos" Select="it.[TipoRepuesto]">
        </asp:EntityDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Cantidad(unidades)"></asp:Label>
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
        

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generar Orden" />
        

        <br />
        <asp:Label ID="lblTipor" runat="server" Text=""></asp:Label>
&nbsp;<asp:Label ID="lblCantr" runat="server" Text=""></asp:Label>

        <br />

        <br />
        <br />
        <asp:Button ID="btnOrdenP" runat="server" OnClick="btnOrdenP_Click" Text="Enviar Orden a Proveedores" Visible="False" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="admin.aspx">Regresar a Pagina Principal</asp:HyperLink>
        <br />

    </form>
</body>
</html>
