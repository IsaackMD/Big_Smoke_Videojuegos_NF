using System;
using System.Web.UI;

namespace Big_Smoke
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        ClsCarrito objcarrito = new ClsCarrito();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAcceso_Click(object sender, EventArgs e)
        {
            if (usu_in.Text != "" && contr_in.Text != "")
            {
                objcarrito.Usu = usu_in.Text;
                objcarrito.Contr = contr_in.Text;

                objcarrito.validarAcceso(Application["cnnCarrito"].ToString());
                if (objcarrito.Clave != 0)
                {
                    Session["cveUsuario"] = objcarrito.Clave;
                    Session["nombreUsuario"] = objcarrito.Nom_Usu;
                    Session["Rol"] = objcarrito.Rol;

                    ScriptManager.RegisterStartupScript(this, GetType(), "Acceso", $"MostrarAcceso('{objcarrito.Nom_Usu}', '{objcarrito.Rol}');", true);

                    if (objcarrito.Rol.ToString() == "ADMINISTRADOR" || objcarrito.Rol.ToString() == "MODERADOR")

                    {
                        Response.Redirect("Administrador/wfAdmin_Inicio.aspx");
                    }
                    else if (objcarrito.Rol.ToString() == "CLIENTE")
                    {
                        Response.Redirect("Cliente/wfUsu_Inicio.aspx");
                    }


                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Error", "MostrarError();", true);
                }
            }
        }
    }
}