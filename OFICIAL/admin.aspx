<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="150px" ImageAlign="Right" ImageUrl="~/img.png" />
&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="cerrar.aspx">Cerrar Sesion</asp:HyperLink>
            <br/><asp:Label ID="Label1" runat="server" Text="ROL: ADMINISTRATIVO"></asp:Label>
        </div>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=issssEntities1" DefaultContainerName="issssEntities1" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="users">
        </asp:EntityDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idUser" DataSourceID="EntityDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idUser" HeaderText="idUser" ReadOnly="True" SortExpression="idUser" />
                <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idUser" DataSourceID="EntityDataSource1" DefaultMode="Insert" GridLines="Both">
           <EditItemTemplate>
                idUser:
                <asp:Label ID="idUserLabel1" runat="server" Text='<%# Eval("idUser") %>' />
                <br />
                userName:
                <asp:TextBox ID="userNameTextBox" runat="server" Text='<%# Bind("userName") %>' />
                <br />
                pass:
                <asp:TextBox ID="passTextBox" runat="server" Text='<%# Bind("pass") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <InsertItemTemplate>
                idUser:
                <asp:TextBox ID="idUserTextBox" runat="server" Text='<%# Bind("idUser") %>' />
                <br />
                userName:
                <asp:TextBox ID="userNameTextBox" runat="server" Text='<%# Bind("userName") %>' />
                <br />
                pass:
                <asp:TextBox ID="passTextBox" runat="server" Text='<%# Bind("pass") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                idUser:
                <asp:Label ID="idUserLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                userName:
                <asp:Label ID="userNameLabel" runat="server" Text='<%# Bind("User") %>' />
                <br />
                pass:
                <asp:Label ID="passLabel" runat="server" Text='<%# Bind("pass") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:FormView>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Refresh" OnClick="Button1_Click" />
        <br />
        <br/><asp:HyperLink ID="HyperLink2" runat="server" EnableTheming="True" NavigateUrl="invetarios.aspx">Inventarios</asp:HyperLink>
       <br/> <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="clientes.aspx">Clientes</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server">Montaje</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink5" runat="server">Reparaciones</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="recolector.aspx">Recolectores</asp:HyperLink>
    </form>
</body>
</html>
