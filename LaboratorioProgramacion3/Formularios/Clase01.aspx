<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios/Site.Master" AutoEventWireup="true" CodeBehind="Clase01.aspx.cs" Inherits="LaboratorioProgramacion3.Formularios.Clase01" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="text-center">Clase 01 - Introducción a ASP.NET</h3>
    <h4 class="text-center">Inscripción a Materias</h4>
    <span><b>Comportamiento:</b>Validar edad debe ser mayor a 18 años (de no ser asi debe mostrar en Label el error)
Mostrar un resumen en un Label con todos los datos seleccionados.</span>


    <br />
    <asp:Label ID="Label1" runat="server" Text="Nombre: "></asp:Label>
    <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Apellido: "></asp:Label>
    <asp:TextBox ID="apellido" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server"  Text="Fecha de Nacimiento: "></asp:Label>
    <asp:TextBox ID="fecha" TextMode="Date" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Semestre:   "></asp:Label>

    <asp:DropDownList ID="semestre" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Value="0">Seleccione un Semestre</asp:ListItem>
        <asp:ListItem Value="1">1º Semestre</asp:ListItem>
        <asp:ListItem Value="2">2º Semestre</asp:ListItem>
        <asp:ListItem Value="3">3º Semestre</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Materias: "></asp:Label>
    <asp:CheckBoxList ID="Materias" runat="server">
    </asp:CheckBoxList>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="REGISTRAR" BackColor="Lime" BorderColor="Blue" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="mensaje" runat="server" Text=""></asp:Label>
</asp:Content>
