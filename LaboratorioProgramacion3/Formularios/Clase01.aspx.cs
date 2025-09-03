using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaboratorioProgramacion3.Formularios
{
    public partial class Clase01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var fechaString = fecha.Text;
            if (nombre.Text.Trim() == "")
            {
                mensaje.Text = "Ingresa tu nombre";
                return;
            }
            if (apellido.Text.Trim() == "")
            {
                mensaje.Text = "Ingresa tu apellido";
                return;
            }
            int edad = 0;
            if (!string.IsNullOrEmpty(fechaString))
            {
                DateTime fechaNacimiento = DateTime.Parse(fecha.Text);
                 edad = DateTime.Today.Year - fechaNacimiento.Year;
                if (edad < 18)
                {
                    mensaje.Text = "No te puedes registrar, eres Menor de edad";
                    return;
                }
            }
            else {
                mensaje.Text = "Ingresa tu Fecha de Nacimiento";
                return;
            }
            string msjMatterias = string.Empty;
            
            foreach (ListItem item in Materias.Items) {
                if (item.Selected) msjMatterias += item.Text+"\n";
            }
            if (semestre.SelectedValue == "0") {
                mensaje.Text = "Seleccione el semestre a cursar";
                return;
            }
            if (msjMatterias == string.Empty) {
                mensaje.Text = "Selecciona la/s Materias a cursar";
                return;
            }
            var msjregistro = $"Alumno: {nombre.Text} {apellido.Text}, edad: {edad}.\n Se ha registrado correctamente al Semestre:{semestre.SelectedValue},en la/s Materias:\n {msjMatterias}  ";
            mensaje.Text = msjregistro;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var periodo = semestre.SelectedValue;
           
            if (periodo != "0") {
                Materias.Items.Clear();
                switch (periodo) { 
                    case "1":
                        Materias.Items.Add(new ListItem("Ingles Tecnico 1", "1"));
                        Materias.Items.Add(new ListItem("Programación 1", "2"));
                        Materias.Items.Add(new ListItem("Matematicas 1", "3"));
                        Materias.Items.Add(new ListItem("Sistemas y Organizaciones", "4"));
                        break;
                    case "2":
                        Materias.Items.Add(new ListItem("Ingles Tecnico 2", "5"));
                        Materias.Items.Add(new ListItem("Base de Datos 1", "6"));
                        Materias.Items.Add(new ListItem("Programación Movil", "7"));
                        Materias.Items.Add(new ListItem("Matematicas 2", "8"));
                        break;
                    case "3":
                        Materias.Items.Add(new ListItem("Laboratorio de programación 1", "9"));
                        Materias.Items.Add(new ListItem("Programación 2", "10"));
                        Materias.Items.Add(new ListItem("Estructura de Datos", "11"));
                        break;
                    default:
                        break;
                }
            }
           
        }
    }
}