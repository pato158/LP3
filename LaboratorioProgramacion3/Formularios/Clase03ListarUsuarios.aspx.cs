using LaboratorioProgramacion3.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaboratorioProgramacion3.Formularios
{
    public partial class Clase03ListarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var sConexion = System.Configuration.ConfigurationManager.ConnectionStrings["sConexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(sConexion);
            conexion.Open();
            var query = "select  Id, Username,Pass,IdUsuarioTipo from Usuarios";
            SqlCommand comanda = new SqlCommand( query, conexion);            
            SqlDataReader lector = comanda.ExecuteReader();
            var Usuarios = new List<Usuario>();
            while (lector.Read()) {
                var user = new Usuario()
                {
                    Id = Convert.ToInt32(lector[0].ToString()),
                    UserName = lector[1].ToString(),
                    Password = lector[2].ToString(),
                    IdUsuarioTipo = Convert.ToInt32(lector[3].ToString())
                };
            }
            conexion.Close();
            foreach (Usuario user in Usuarios) {
                Label1.Text += user.UserName+ " ";
            }
        }
    }
}