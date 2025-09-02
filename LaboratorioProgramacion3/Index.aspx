<%@ Page Title="Index" Language="C#" MasterPageFile="~/Formularios/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="LaboratorioProgramacion3.Formularios.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="">
        <h1 class="text-center">
            <asp:Label ID="Label1" runat="server" Text="Laboratorio de Programacion 3"></asp:Label>
        </h1>
        <h3>
            <asp:Label ID="Label2" runat="server" Text="Profesor: Pablo Bobarini"></asp:Label>
        </h3>
        <h3>
            <asp:Label ID="Label3" runat="server" Text="Alumno: Ferreyra Patricio"></asp:Label>
        </h3>
        <h5>
            <asp:Label ID="Label4" runat="server" Text="Periodo: 6º semestre 2025"></asp:Label>
        </h5>
        <span>aplicaciones Web usando Web Forms con ASP.NET.</span>
    </div>
</asp:Content>
