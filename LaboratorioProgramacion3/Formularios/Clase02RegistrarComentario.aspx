<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios/Site.Master" AutoEventWireup="true" enableEventValidation="false" CodeBehind="Clase02RegistrarComentario.aspx.cs" Inherits="LaboratorioProgramacion3.Formularios.Clase02RegistrarComentario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="text-center">Registra tu comentario de Visitas</h3>
    <form class="form">
        <div class="form-group" style="max-width:50%; margin:auto;">
            <label>Nombre:</label>
            <asp:TextBox ID="nombre" runat="server" CssClass="form-control"></asp:TextBox>
            <label>Pais:</label>
            <asp:TextBox ID="pais" runat="server" CssClass="form-control"></asp:TextBox>
            <label>Comentario:</label>
            <asp:TextBox ID="comentario" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Button ID="registrar" runat="server" Text="Registrar" CssClass="btn btn-success" OnClick="registrar_Click" />
            <br />
            <asp:Label ID="mensaje" runat="server" Text=""></asp:Label>
        </div>

    </form>
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl="~/Formularios/Clase02.aspx">Volver</asp:HyperLink>

</asp:Content>
