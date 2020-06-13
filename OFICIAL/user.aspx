<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="cerrar.aspx">Cerrar Sesion</asp:HyperLink>

        </div>
        <asp:Label ID="Label1" runat="server" Text="ROL: RECOLECTOR"></asp:Label>
        <br/>
        <asp:Image ID="Image1" runat="server" Height="150px" ImageAlign="Right" ImageUrl="~/img.png" />
        <br/>
        <asp:Label ID="Label2" runat="server" Text="Notificaciones de Asignacion de Rutas"></asp:Label>
    &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="5"></asp:Label>
        <br />
        <br />
        
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=issssEntities6" DefaultContainerName="issssEntities6" EnableFlattening="False" EnableUpdate="True" EntitySetName="rutas">
        </asp:EntityDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idRuta" DataSourceID="EntityDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="idRuta" HeaderText="idRuta" ReadOnly="True" SortExpression="idRuta" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                <asp:BoundField DataField="Asignado_A" HeaderText="Asignado_A" SortExpression="Asignado_A" />
                <asp:BoundField DataField="Dinero_A_Recolectar" HeaderText="Dinero_A_Recolectar" SortExpression="Dinero_A_Recolectar" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
            </Columns>
        </asp:GridView>

    </form>
</body>
</html>
