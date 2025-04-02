using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Big_Smoke.Administrador
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        ClsCarrito objCarrito = new ClsCarrito();
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if (!MostradoSweetAlert())
                {
                    MostrarSweetAlert();

                    MarcarSweetAlertMostrado();
                }
            }
            ListaUsuarios();
        }

        private bool MostradoSweetAlert()
        {
            return Request.Cookies["SweetAlertMostrado"] != null;
        }

        private void MarcarSweetAlertMostrado()
        {
            Response.Cookies["SweetAlertMostrado"].Value = "true";
            Response.Cookies["SweetAlertMostrado"].Expires = DateTime.Now.AddSeconds(15);
        }

        private void MostrarSweetAlert()
        {
            string nom_usu = Session["Nombre"].ToString();
            string rol = Session["Rol"].ToString();
            ScriptManager.RegisterStartupScript(this, GetType(), "Acceso", $"MostrarAcceso('{nom_usu}', '{rol}');", true);

        }

        void ListaUsuarios()
        {
            Session["TotalUsu"] = objCarrito.TotalUsuarios(Application["cnnCarrito"].ToString());
            string id = "";
            ds = new DataSet();
            ds = objCarrito.ListarUsuarios(Application["cnnCarrito"].ToString());
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                id = dr["ID_Us"].ToString();
                break;
            }
            if (id != "0")
            {
                gvUsuarios.DataSource = ds;
                gvUsuarios.DataMember = "ListaUsuarios";
                gvUsuarios.DataBind();
            }
        }

        void Limpiar()
        {
            txtNombreUsu.Text = "";
            ap.Text = "";
            am.Text = "";
            txtUsuario.Text = "";
            txtCon.Text = "";
            txtCelular.Text = "";
            txtCorreo.Text = "";

        }

        protected void gvUsuarios_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvUsuarios.PageIndex = e.NewPageIndex;
            ListaUsuarios();
        }

        protected void btnCrearUsu_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtUsuario.Text) & string.IsNullOrEmpty(txtNombreUsu.Text) & string.IsNullOrEmpty(txtCorreo.Text) & string.IsNullOrEmpty(txtCelular.Text))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Error", " MostrarVacio();", true);
            }
            else
            {

                int res = objCarrito.insertarUsuario(Application["cnnCarrito"].ToString(), txtNombreUsu.Text, ap.Text, am.Text, txtUsuario.Text, txtCon.Text, txtCelular.Text, txtCorreo.Text, int.Parse(DropDownRol.SelectedValue));
                if (res == 1)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Guardado", " MostrarGuardar();", true);
                    Limpiar();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Guardado", " ErrorGuardUsu()", true);
                }
                ListaUsuarios();
            }
        }
    }
}