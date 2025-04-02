using System;
using System.Configuration;

namespace Big_Smoke
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["cnnCarrito"] = ConfigurationManager.ConnectionStrings["cnnCarrito"].ConnectionString.ToString();
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            // Datos Usuario
            Session["cveUsuario"] = 0;
            Session["Nombre"] = "";
            Session["ApellidoP"] = "";
            Session["ApellidoM"] = "";
            Session["Contra"] = "";
            Session["Celular"] = "";
            Session["Correo"] = "";
            Session["Estatus"] = 0;
            Session["Rol"] = "";
            Session["NombreUsuario"] = "";

            Session["TotalUsu"] = 0;
            Session["TotalPro"] = 0;
            Session["TotalCom"] = 0;
            Session["JuegosTotUs"] = 0;


            Session["VenActual"] = 0;

            // Datos productos
            Session["IDProd"] = 0;
            Session["NomProd"] = "";
            Session["ClaProd"] = "";
            Session["DesaProd"] = "";
            Session["Pro_Img"] = "";


        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}