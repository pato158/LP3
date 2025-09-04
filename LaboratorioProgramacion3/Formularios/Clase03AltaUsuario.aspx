<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios/Site.Master" AutoEventWireup="true" CodeBehind="Clase03AltaUsuario.aspx.cs" Inherits="LaboratorioProgramacion3.Formularios.Clase03AltaUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="text-center">Alta de usuario</h3>
    <form class="form">
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Nombre de Usuario: "></asp:Label>
            <asp:TextBox ID="userName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Contraseña: "></asp:Label>
            <asp:TextBox ID="password" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Rol: "></asp:Label>
            <asp:DropDownList ID="roles" runat="server" CssClass="form-control">
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" BackColor="Lime" BorderColor="Blue" OnClick="btnRegistrar_Click" CssClass="btn btn-primary" />
        </div>

    <asp:Label ID="mensaje" runat="server" Text="Label"></asp:Label>
    </form>
    <br />

    <asp:HyperLink ID="HyperLink5" runat="server" BackColor="lime" BorderColor="blue" CssClass="btn btn-primary" NavigateUrl="~/Formularios/Clase03.aspx">Volver</asp:HyperLink>
</asp:Content>
