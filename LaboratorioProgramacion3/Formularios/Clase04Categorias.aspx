<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios/Site.Master" AutoEventWireup="true" CodeBehind="Clase04Categorias.aspx.cs" Inherits="LaboratorioProgramacion3.Formularios.Clase04Categorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <span><b>Metas de Comprensión:</b><br />
        Conexión al servidor de base de datos SQL Server.
Configuración de la componente SqlDataSource.
Altas, Bajas, Modificaciones y consultas de una tabla.</span>
    <br />
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Formularios/Clase04.aspx">ABM Productos</asp:HyperLink>
    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Formularios/Clase04Categorias.aspx">ABM Categorias de Productos</asp:HyperLink>
    <br />
    <br />
    <label>Categoria: </label>
    <asp:TextBox ID="descripcion" runat="server"></asp:TextBox>
    <asp:Button CssClass="btn btn-success" ID="agregarCategoria" runat="server" Text="Agregar" OnClick="agregarCategoria_Click" />
    <asp:Button CssClass="btn btn-success" ID="modificarCategoria" runat="server" Text="Modificar" />
    <asp:Button CssClass="btn btn-danger" ID="eliminarCategoria" runat="server" Text="Eliminar" />
    <br />
    <asp:Label ID="mensaje" runat="server" Text=""></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idCategoria" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="idCategoria" HeaderText="idCategoria" InsertVisible="False" ReadOnly="True" SortExpression="idCategoria" />
            <asp:BoundField DataField="nombreCategoria" HeaderText="nombreCategoria" SortExpression="nombreCategoria" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexionDatasource %>" SelectCommand="SELECT [idCategoria], [nombreCategoria] FROM [Categorias]" InsertCommand="INSERT INTO Categorias(nombreCategoria) VALUES (@descripcion)">
        <InsertParameters>
            <asp:Parameter Name="descripcion" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
