using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaboratorioProgramacion3.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int IdUsuarioTipo { get; set; }
    }
}