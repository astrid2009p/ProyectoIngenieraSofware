<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tablas2.aspx.cs" Inherits="tablas2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=issssEntities6" DefaultContainerName="issssEntities6" EnableFlattening="False" EnableUpdate="True" EntitySetName="rutas">
            </asp:EntityDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="idRuta" DataSourceID="EntityDataSource1" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="idRuta" HeaderText="idRuta" ReadOnly="True" SortExpression="idRuta" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                <asp:BoundField DataField="Asignado_A" HeaderText="Asignado_A" SortExpression="Asignado_A" />
                <asp:BoundField DataField="Dinero_A_Recolectar" HeaderText="Dinero_A_Recolectar" SortExpression="Dinero_A_Recolectar" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="admin.aspx">Regresar al menu principal</asp:HyperLink>
    </form>
</body>
</html>
