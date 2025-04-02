using System;

namespace Big_Smoke.Cliente
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        ClsCarrito objCarrito = new ClsCarrito();
        ClsCarrito objProdu;
        int idprod;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar15_Click(object sender, EventArgs e)
        {
            idprod = 15;
            objProdu = new ClsCarrito(idprod);



            objProdu.producto_info(Application["cnnCarrito"].ToString(), idprod);
            Session["IDProd"] = idprod;
            Session["NomProd"] = objProdu.Nompro;
            Session["ClaProd"] = objProdu.Clapro;
            Session["DesaProd"] = objProdu.Desapro;
            Session["Pro_Img"] = objProdu.Img;
            Response.Redirect("wfUsuDetalleP.aspx");
        }

        protected void btnAgregar16_Click(object sender, EventArgs e)
        {
            idprod = 16;
            objProdu = new ClsCarrito(idprod);

            objProdu.producto_info(Application["cnnCarrito"].ToString(), idprod);
            Session["IDProd"] = idprod;
            Session["NomProd"] = objProdu.Nompro;
            Session["ClaProd"] = objProdu.Clapro;
            Session["DesaProd"] = objProdu.Desapro;
            Session["Pro_Img"] = objProdu.Img;
            Response.Redirect("wfUsuDetalleP.aspx");
        }

        protected void btnAgregar17_Click(object sender, EventArgs e)
        {
            idprod = 17;
            objProdu = new ClsCarrito(idprod);

            objProdu.producto_info(Application["cnnCarrito"].ToString(), idprod);
            Session["IDProd"] = idprod;
            Session["NomProd"] = objProdu.Nompro;
            Session["ClaProd"] = objProdu.Clapro;
            Session["DesaProd"] = objProdu.Desapro;
            Session["Pro_Img"] = objProdu.Img;
            Response.Redirect("wfUsuDetalleP.aspx");
        }

        protected void btnAgregar18_Click(object sender, EventArgs e)
        {
            idprod = 18;
            objProdu = new ClsCarrito(idprod);

            objProdu.producto_info(Application["cnnCarrito"].ToString(), idprod);
            Session["IDProd"] = idprod;
            Session["NomProd"] = objProdu.Nompro;
            Session["ClaProd"] = objProdu.Clapro;
            Session["DesaProd"] = objProdu.Desapro;
            Session["Pro_Img"] = objProdu.Img;
            Response.Redirect("wfUsuDetalleP.aspx");
        }

        protected void btnAgregar19_Click(object sender, EventArgs e)
        {
            idprod = 19;
            objProdu = new ClsCarrito(idprod);

            objProdu.producto_info(Application["cnnCarrito"].ToString(), idprod);
            Session["IDProd"] = idprod;
            Session["NomProd"] = objProdu.Nompro;
            Session["ClaProd"] = objProdu.Clapro;
            Session["DesaProd"] = objProdu.Desapro;
            Session["Pro_Img"] = objProdu.Img;
            Response.Redirect("wfUsuDetalleP.aspx");
        }

        protected void btnAgregar20_Click(object sender, EventArgs e)
        {
            idprod = 20;
            objProdu = new ClsCarrito(idprod);

            objProdu.producto_info(Application["cnnCarrito"].ToString(), idprod);
            Session["IDProd"] = idprod;
            Session["NomProd"] = objProdu.Nompro;
            Session["ClaProd"] = objProdu.Clapro;
            Session["DesaProd"] = objProdu.Desapro;
            Session["Pro_Img"] = objProdu.Img;
            Response.Redirect("wfUsuDetalleP.aspx");
        }

        protected void btnAgregar21_Click(object sender, EventArgs e)
        {
            idprod = 21;
            objProdu = new ClsCarrito(idprod);

            objProdu.producto_info(Application["cnnCarrito"].ToString(), idprod);
            Session["IDProd"] = idprod;
            Session["NomProd"] = objProdu.Nompro;
            Session["ClaProd"] = objProdu.Clapro;
            Session["DesaProd"] = objProdu.Desapro;
            Session["Pro_Img"] = objProdu.Img;
            Response.Redirect("wfUsuDetalleP.aspx");
        }

        protected void btnAgregar22_Click(object sender, EventArgs e)
        {
            idprod = 23;
            objProdu = new ClsCarrito(idprod);

            objProdu.producto_info(Application["cnnCarrito"].ToString(), idprod);
            Session["IDProd"] = idprod;
            Session["NomProd"] = objProdu.Nompro;
            Session["ClaProd"] = objProdu.Clapro;
            Session["DesaProd"] = objProdu.Desapro;
            Session["Pro_Img"] = objProdu.Img;
            Response.Redirect("wfUsuDetalleP.aspx");
        }

    }
}