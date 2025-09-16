<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios/Site.Master" AutoEventWireup="true" CodeBehind="Clase02.aspx.cs" Inherits="LaboratorioProgramacion3.Formularios.Clase02" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h3 class="text-center">Clase 02 - Lectura y escritura de archivos</h3>
    <h4 class="text-center">Agenda Personal</h4>
    <span><b>Comportamiento: Confeccionaremos un libro de visitas de un sitio web.
La página principal dispondremos de dos hipervínculos (HyperLink), el primero irá al
formulario de carga y el segundo el listado del contenido del archivo. 
        <br />
        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="btn btn-success" NavigateUrl="~/Formularios/Clase02RegistrarComentario.aspx">Cargar Comentario</asp:HyperLink>
        <asp:HyperLink ID="HyperLink6" runat="server" CssClass="btn btn-success" NavigateUrl="~/Formularios/Clase02LibroComentarios.aspx" >Ver Libro de Comentarios</asp:HyperLink>
        </b></span>
</asp:Content>
