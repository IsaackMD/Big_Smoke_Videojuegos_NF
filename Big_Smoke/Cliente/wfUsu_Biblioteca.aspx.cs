using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Big_Smoke.Cliente
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        ClsCarrito objCarrito = new ClsCarrito();
        DataSet ds;
        string tolB;
        protected void Page_Load(object sender, EventArgs e)
        {
            Biblioteca();
        }

        void Biblioteca()
        {
            string id = "";
            ds = new DataSet();
            ds = objCarrito.BibliotecaUsu(Application["cnnCarrito"].ToString(), 1, int.Parse(Session["cveUsuario"].ToString()));
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                id = dr["ID_VENTA"].ToString();
                break;
            }
            if (id != "0")
            {
                gvBiblioteca.DataSource = ds;
                gvBiblioteca.DataMember = "BibliotecaUS";
                gvBiblioteca.DataBind();
            }
            Session["JuegosTotUs"] = objCarrito.BibliotecaTotal(Application["cnnCarrito"].ToString(), int.Parse(Session["cveUsuario"].ToString()));
            tolB = Session["JuegosTotUs"].ToString();
            if (tolB != "0")
            {
                lblContador.Text = tolB;
                lblPro.Text = "Esperamos Que Disfrutes De tus Compras";
            }
        }
        protected void gvBiblioteca_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvBiblioteca.PageIndex = e.NewPageIndex;
            Biblioteca();
        }
    }
}