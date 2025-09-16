using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaboratorioProgramacion3.Formularios
{
    public partial class Clase03AltaUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var sConexion = System.Configuration.ConfigurationManager.ConnectionStrings["sConexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(sConexion);
            conexion.Open();
            var query = "SELECT * from USUARIOTIPOS";
            SqlCommand comanda = new SqlCommand(query, conexion);
            SqlDataReader lector = comanda.ExecuteReader();
            roles.Items.Clear();
            while (lector.Read())
            {
                roles.Items.Add(new ListItem { Value = lector["Id"].ToString(), Text = lector["Descripcion"].ToString() });
            }
            conexion.Close();

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            var user = userName.Text;
            if (user.Trim() == "")
            {
                mensaje.Text = "Ingrese nombre de usuario";
                return;
            }
            var pass = password.Text;
            if (pass.Trim() == "")
            {
                mensaje.Text = "Ingrese una contraseña";
                return;
            }

            var sConexion = System.Configuration.ConfigurationManager.ConnectionStrings["sConexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(sConexion);
            conexion.Open();
            var query = $"insert into Usuarios(Username,Password,IdUsuarioTipo) values('{userName.Text}','{password.Text}',{roles.SelectedValue})";
            SqlCommand comanda = new SqlCommand(query, conexion);
            var inserto = comanda.ExecuteNonQuery();
            if (inserto != 0)
            {
                mensaje.Text = "Usuario registrado con exito";
            }
            else {
                mensaje.Text = "Error al guardar el usuario";
            }

        }
    }
}