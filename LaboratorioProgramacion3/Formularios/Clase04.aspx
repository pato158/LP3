<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios/Site.Master" AutoEventWireup="true" CodeBehind="Clase04.aspx.cs" Inherits="LaboratorioProgramacion3.Formularios.Clase04" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <span><b>Metas de Comprensión:</b><br />
Conexión al servidor de base de datos SQL Server.
Configuración de la componente SqlDataSource.
Altas, Bajas, Modificaciones y consultas de una tabla.</span>
    <br />
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Formularios/Clase04.aspx">ABM Productos</asp:HyperLink>
<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Formularios/Clase04Categorias.aspx">ABM Categorias de Productos</asp:HyperLink>
<br />
<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="Id">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexionDatasource %>" SelectCommand="SELECT [Id], [Descripcion] FROM [UsuarioTipos]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="selectUsuarios" AutoGenerateColumns="False" DataKeyNames="Id">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="IdUsuarioTipo" HeaderText="IdUsuarioTipo" SortExpression="IdUsuarioTipo" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="selectUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:tablaUsuarios %>" SelectCommand="SELECT [Id], [Username], [Password], [IdUsuarioTipo] FROM [Usuarios]"></asp:SqlDataSource>
<br />

</asp:Content>
