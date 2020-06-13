<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecolectorTable.aspx.cs" Inherits="RecolectorTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            ASIGNAR RUTA A ASTRID PALENCIA</div>
        

        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=issssEntities6" DefaultContainerName="issssEntities6" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="rutas">
        </asp:EntityDataSource>
        

        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="idRuta" DataSourceID="EntityDataSource1" DefaultMode="Insert" OnPageIndexChanging="FormView1_PageIndexChanging1">
            <EditItemTemplate>
                idRuta:
                <asp:Label ID="idRutaLabel1" runat="server" Text='<%# Eval("idRuta") %>' />
                <br />
                Direccion:
                <asp:TextBox ID="DireccionTextBox" runat="server" Text='<%# Bind("Direccion") %>' />
                <br />
                Asignado_A:
                <asp:TextBox ID="Asignado_ATextBox" runat="server" Text='<%# Bind("Asignado_A") %>' />
                <br />
                Dinero_A_Recolectar:
                <asp:TextBox ID="Dinero_A_RecolectarTextBox" runat="server" Text='<%# Bind("Dinero_A_Recolectar") %>' />
                <br />
                Estado:
                <asp:TextBox ID="EstadoTextBox" runat="server" Text='<%# Bind("Estado") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
                idRuta:
                <asp:TextBox ID="idRutaTextBox" runat="server" Text='<%# Bind("idRuta") %>' />
                <br />
                Direccion:
                <asp:TextBox ID="DireccionTextBox" runat="server" Text='<%# Bind("Direccion") %>' />
                <br />
                Asignado_A:
                <asp:TextBox ID="Asignado_ATextBox" runat="server" Text='<%# Bind("Asignado_A") %>' />
                <br />
                Dinero_A_Recolectar:
                <asp:TextBox ID="Dinero_A_RecolectarTextBox" runat="server" Text='<%# Bind("Dinero_A_Recolectar") %>' />
                <br />
                Estado:
                <asp:TextBox ID="EstadoTextBox" runat="server" Text='<%# Bind("Estado") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Guardar Y enviar Notificacion" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="" />
            </InsertItemTemplate>
            <ItemTemplate>
                idRuta:
                <asp:Label ID="idRutaLabel" runat="server" Text='<%# Eval("idRuta") %>' />
                <br />
                Direccion:
                <asp:Label ID="DireccionLabel" runat="server" Text='<%# Bind("Direccion") %>' />
                <br />
                Asignado_A:
                <asp:Label ID="Asignado_ALabel" runat="server" Text='<%# Bind("Asignado_A") %>' />
                <br />
                Dinero_A_Recolectar:
                <asp:Label ID="Dinero_A_RecolectarLabel" runat="server" Text='<%# Bind("Dinero_A_Recolectar") %>' />
                <br />
                Estado:
                <asp:Label ID="EstadoLabel" runat="server" Text='<%# Bind("Estado") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
        

    </form>
</body>
</html>
