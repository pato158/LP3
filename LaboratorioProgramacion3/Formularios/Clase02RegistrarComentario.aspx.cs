using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaboratorioProgramacion3.Formularios
{
    public partial class Clase02RegistrarComentario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registrar_Click(object sender, EventArgs e)
        {
            if (nombre.Text.Trim().Equals("")) {mensaje.Text = "Ingrese su nombre"; return; }
            if (pais.Text.Trim().Equals("")) { mensaje.Text = "Ingrese su pais"; return; }
            if (comentario.Text.Trim().Equals("")) { mensaje.Text = "Ingrese un comentario"; return; }
            StreamWriter archivo = new StreamWriter(this.Server.MapPath(".")+"/Comentarios.txt", true);
            archivo.WriteLine(this.nombre.Text +"<br>");
            archivo.WriteLine(this.pais.Text + "<br>");
            archivo.WriteLine(this.comentario.Text + "<br>");
            archivo.WriteLine("<hr>");
            archivo.Close();
            mensaje.Text = "Comentario registrado con exito";
        }
    }
}