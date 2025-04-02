using System;
using System.Web.UI;

namespace Big_Smoke.Administrador
{
    public partial class Formulario_web14 : System.Web.UI.Page
    {
        ClsCarrito objcarrito = new ClsCarrito();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                objcarrito.obtenerInfoUsu(Application["cnnCarrito"].ToString(), int.Parse(Session["cveUsuario"].ToString()));
                Session["Nombre"] = objcarrito.Nom_Usu;
                Session["ApellidoP"] = objcarrito.Ap_usu;
                Session["ApellidoM"] = objcarrito.Am_usu;
                Session["Contra"] = objcarrito.Contr;
                Session["Celular"] = objcarrito.Celu;
                Session["Correo"] = objcarrito.Correo;


                usu_nom.Text = Session["Nombre"].ToString();
                usu_apep.Text = Session["ApellidoP"].ToString();
                usu_apem.Text = Session["ApellidoM"].ToString();
                usu_contr.Text = Session["Contra"].ToString();
                usu_tel.Text = Session["Celular"].ToString();
                usu_email.Text = Session["Correo"].ToString();

            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("wfAdmin_Inicio.aspx");
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {

            string usu_Nom = usu_nom.Text;
            string res = objcarrito.actualizarUsu(Application["cnnCarrito"].ToString(), int.Parse(Session["cveUsuario"].ToString()), usu_Nom, usu_apep.Text, usu_apem.Text, usu_email.Text, usu_contr.Text, usu_tel.Text);


            if (res == "0")
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Guardado", " GuardadoExi();", true);

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Sin Cambios", " nel();", true);
            }

        }
    }
}