using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaboratorioProgramacion3.Formularios
{
    public partial class Clase02LibroComentarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try {
            StreamReader archivo = new StreamReader(this.Server.MapPath(".") + "/Comentarios.txt");
            this.mensaje.Text = archivo.ReadToEnd();
            archivo.Close();
            }
            catch (Exception ex) {
                this.mensaje.Text ="No hay comentarios hasta el momento";
            }

        }
    }
}