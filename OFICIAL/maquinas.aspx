<%@ Page Language="C#" AutoEventWireup="true" CodeFile="maquinas.aspx.cs" Inherits="maquinas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<asp:Label ID="Label1" runat="server" Text="ORDEN DE MAQUINA"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Tipo de MAQUINA"></asp:Label>

            <br />
            <asp:DropDownList ID="ddlMaquina" runat="server" DataSourceID="EntityDataSource1" DataTextField="Tipo_Maquina" DataValueField="Tipo_Maquina">
            </asp:DropDownList>
            <br />
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=issssEntities4" DefaultContainerName="issssEntities4" EnableFlattening="False" EntitySetName="maquinas" Select="it.[Tipo_Maquina]">
            </asp:EntityDataSource>
            <br />
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
            <br />
            <asp:Label ID="lblTipoM" runat="server"></asp:Label>
            <asp:Label ID="lblCantM" runat="server"></asp:Label>

            <br />
            <br />
            <asp:Button ID="btnOrdenP" runat="server" OnClick="btnOrdenP_Click" Text="Enviar Orden a Proveedores" Visible="False" />

        </div>
        <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="admin.aspx">Regresar a Pagina Principal</asp:HyperLink>
        </p>
    </form>
</body>
</html>
