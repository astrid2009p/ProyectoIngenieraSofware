<%@ Page Language="C#" AutoEventWireup="true" CodeFile="invetarios.aspx.cs" Inherits="invetarios" %>

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
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=issssEntities2" DefaultContainerName="issssEntities2" EnableFlattening="False" EntitySetName="producto">
        </asp:EntityDataSource>
        <asp:Image ID="Image1" runat="server" Height="150px" ImageAlign="Right" ImageUrl="~/img.png" />
        <br/><br/>
        
        <asp:Label ID="Label1" runat="server" Text="PRODUCTO EN STOCK"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="idPro" DataSourceID="EntityDataSource1" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="idPro" HeaderText="idPro" ReadOnly="True" SortExpression="idPro" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Sabor" HeaderText="Sabor" SortExpression="Sabor" />
                <asp:BoundField DataField="DisponibleEnStock" HeaderText="DisponibleEnStock" SortExpression="DisponibleEnStock" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="producto.aspx">Generar Orden de Producto</asp:HyperLink>
        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=issssEntities3" DefaultContainerName="issssEntities3" EnableFlattening="False" EntitySetName="repuestos">
        </asp:EntityDataSource>
        <br/><br/><br/>
        <asp:Label ID="Label2" runat="server" Text="REPUESTOS EN STOCK"></asp:Label>
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="idRep" DataSourceID="EntityDataSource2" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="idRep" HeaderText="idRep" ReadOnly="True" SortExpression="idRep" />
                <asp:BoundField DataField="TipoRepuesto" HeaderText="TipoRepuesto" SortExpression="TipoRepuesto" />
                <asp:BoundField DataField="Disponible_En_Stock" HeaderText="Disponible_En_Stock" SortExpression="Disponible_En_Stock" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" ClientIDMode="AutoID" NavigateUrl="repuestos.aspx">Generar Orden de Repuestos</asp:HyperLink>
        <br />
        <br />
        <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=issssEntities4" DefaultContainerName="issssEntities4" EnableFlattening="False" EntitySetName="maquinas">
        </asp:EntityDataSource>
        <asp:Label ID="Label3" runat="server" Text="MAQUINAS EN STOCK"></asp:Label>
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="idMaquina" DataSourceID="EntityDataSource3" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="idMaquina" HeaderText="idMaquina" ReadOnly="True" SortExpression="idMaquina" />
                <asp:BoundField DataField="Tipo_Maquina" HeaderText="Tipo_Maquina" SortExpression="Tipo_Maquina" />
                <asp:BoundField DataField="Disponibilidad" HeaderText="Disponibilidad" SortExpression="Disponibilidad" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="maquinas.aspx">Generar Orden de Maquinas</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="admin.aspx">Regresar a Pagina Principal</asp:HyperLink>
    </form>
</body>
</html>
