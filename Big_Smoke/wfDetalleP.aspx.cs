using System;

namespace Big_Smoke
{
    public partial class Formulario_web12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("wfAcceso.aspx");
        }
    }
}