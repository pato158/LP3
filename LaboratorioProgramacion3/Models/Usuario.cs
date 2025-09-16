using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaboratorioProgramacion3.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public int IdUsuarioTipo { get; set; }
    }
}