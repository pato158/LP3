<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios/Site.Master" AutoEventWireup="true" CodeBehind="Clase03.aspx.cs" Inherits="LaboratorioProgramacion3.Formularios.Clase03" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h3 class="text-center">Clase 03 - </h3>
    <h4 class="text-center">Conexion con la base de datos</h4>
    <span><b>Comportamiento:ABM Usuarios</b></span>
    <div>

        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Formularios/Clase03AltaUsuario.aspx">Alta Usuario</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Formularios/Clase03ListarUsuarios.aspx">Mostrar Usuarios</asp:HyperLink>
        <asp:HyperLink ID="HyperLink6" runat="server">Eliminar Usuario</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server">Modificar Usuario</asp:HyperLink>
        
    </div>
</asp:Content>
