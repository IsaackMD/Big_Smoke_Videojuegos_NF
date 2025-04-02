using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Big_Smoke.Cliente
{
    public partial class Formulario_web14 : System.Web.UI.Page
    {
        ClsCarrito objCarrito = new ClsCarrito();
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Biblioteca();
            }
        }

        void Biblioteca()
        {
            string id = "";
            ds = new DataSet();
            ds = objCarrito.BibliotecaUsu(Application["cnnCarrito"].ToString(), 0, int.Parse(Session["cveUsuario"].ToString()));
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                id = dr["ID_VENTA"].ToString();
                break;
            }
            if (id != "0")
            {
                gvCarrito.DataSource = ds;
                gvCarrito.DataMember = "BibliotecaUS";
                gvCarrito.DataBind();

            }
        }


        protected void btnElim_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < gvCarrito.Rows.Count; i++)
            {
                CheckBox ck = (CheckBox)gvCarrito.Rows[i].FindControl("ckSelect");

                if (ck != null && ck.Checked)
                {

                    objCarrito.eliminarCompra(Application["cnnCarrito"].ToString(), int.Parse(gvCarrito.Rows[i].Cells[1].Text), int.Parse(gvCarrito.Rows[i].Cells[2].Text));
                    ScriptManager.RegisterStartupScript(this, GetType(), "Eliminar", " ElimCompra()", true);

                }
            }
            Biblioteca();
        }

        protected void gvCarrito_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvCarrito.PageIndex = e.NewPageIndex;
            Biblioteca();
        }

        protected void btnConfitm_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < gvCarrito.Rows.Count; i++)
            {
                CheckBox ck = (CheckBox)gvCarrito.Rows[i].FindControl("ckSelect");

                if (ck != null && ck.Checked)
                {

                    objCarrito.confirmarCompra(Application["cnnCarrito"].ToString(), int.Parse(Session["cveUsuario"].ToString()), int.Parse(gvCarrito.Rows[i].Cells[2].Text));
                    ScriptManager.RegisterStartupScript(this, GetType(), "Comprado", " MostrarCompra()", true);

                }
            }
            Biblioteca();
        }
    }
}