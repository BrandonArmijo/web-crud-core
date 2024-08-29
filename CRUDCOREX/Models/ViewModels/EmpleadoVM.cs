using Microsoft.AspNetCore.Mvc.Rendering;

namespace CRUDCOREX.Models.ViewModels
{
    public class EmpleadoVM
    {

        public Empleado oEmpleado { get; set; }

        public List<SelectListItem> oListaCargo { get; set; }
    }
}
