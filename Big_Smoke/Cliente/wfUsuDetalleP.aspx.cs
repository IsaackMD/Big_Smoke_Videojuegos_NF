using System;

namespace Big_Smoke.Cliente
{
    public partial class Formulario_web13 : System.Web.UI.Page
    {

        ClsCarrito objPro;
        protected void Page_Load(object sender, EventArgs e)
        {
            objPro = new ClsCarrito(int.Parse(Session["IDProd"].ToString()));
            string res = objPro.existente_Pro(Application["cnnCarrito"].ToString(), int.Parse(Session["cveUsuario"].ToString()), int.Parse(Session["IDProd"].ToString()));

            if (res == "0")
            {
                Agregar.Text = "Agregar Al Carrito";
            }
            else
            {

                Agregar.Enabled = false;
                Agregar.Text = "Ya En Libreria";
            }
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            objPro.insertarVenta(Application["cnnCarrito"].ToString(), int.Parse(Session["cveUsuario"].ToString()), int.Parse(Session["IDProd"].ToString()));
            Response.Redirect("wfUsuCarrito.aspx");
        }
    }
}