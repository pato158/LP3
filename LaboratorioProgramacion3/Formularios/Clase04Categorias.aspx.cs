using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaboratorioProgramacion3.Formularios
{
    public partial class Clase04Categorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void agregarCategoria_Click(object sender, EventArgs e)
        {
            var descr = descripcion.Text;
            if (descr.Trim() == "")
            {
                mensaje.Text = "Ingrese un Nombre a la categoria";
                return;
            }
            SqlDataSource1.InsertParameters["descripcion"].DefaultValue = descr;
            var msje =  SqlDataSource1.Insert();
            mensaje.Text = msje.ToString();
        }
    }
}