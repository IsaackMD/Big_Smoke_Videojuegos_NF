using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Big_Smoke.Administrador
{
    public partial class Formulario_web13 : System.Web.UI.Page
    {
        ClsCarrito objCarrito = new ClsCarrito();
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            ListaVentas();
            totCom();
        }
        void ListaVentas()
        {
            string id = "";
            ds = new DataSet();
            ds = objCarrito.ListarVentas(Application["cnnCarrito"].ToString(), 0);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                id = dr["ID_VENTA"].ToString();
                break;
            }
            if (id != "0")
            {
                gvCompras.DataSource = ds;
                gvCompras.DataMember = "ListaVentas";
                gvCompras.DataBind();
            }
        }

        void ListaVentasTop()
        {
            string id = "";
            ds = new DataSet();
            ds = objCarrito.ListarVentas(Application["cnnCarrito"].ToString(), 1);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                id = dr["ID_VIDEOJUEGO"].ToString();
                break;
            }
            if (id != "0")
            {
                gvCompras.DataSource = ds;
                gvCompras.DataMember = "ListaVentas";
                gvCompras.DataBind();
            }
        }
        void totCom()
        {

            Session["TotalCom"] = objCarrito.TotalCompras(Application["cnnCarrito"].ToString());

        }
        protected void gvCompras_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvCompras.PageIndex = e.NewPageIndex;
            ListaVentas();
        }

        protected void btnTopVen_Click(object sender, EventArgs e)
        {
            ListaVentasTop();
        }

        protected void btnVentas_Click(object sender, EventArgs e)
        {
            ListaVentas();
        }
    }
}