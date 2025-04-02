using System;
using System.Data;
using System.Drawing;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NPOI.HSSF.UserModel;
using NPOI.SS.UserModel;
using NPOI.XSSF.UserModel;

namespace Big_Smoke.Administrador
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        string rutaArchivo = "";
        ClsCarrito objCarrito = new ClsCarrito();
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListaProductos();
            }

        }

        void ListaProductos()
        {
            string id = "";
            ds = new DataSet();
            ds = objCarrito.ListarProductos(Application["cnnCarrito"].ToString());
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                id = dr["ID_VIDEOJUEGO"].ToString();
                break;
            }
            if (id != "0")
            {
                gvProductos.DataSource = ds;
                gvProductos.DataMember = "ListaProductos";
                gvProductos.DataBind();
            }
            Session["TotalPro"] = objCarrito.TotalProductos(Application["cnnCarrito"].ToString());
        }

        protected void gvProductos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvProductos.PageIndex = e.NewPageIndex;
            ListaProductos();
        }


        protected void btnGuardarPro_Click(object sender, EventArgs e)
        {

            rutaArchivo = HttpContext.Current.Server.MapPath("~/Temporal");
            //se verifica que la ruta exista
            if (!Directory.Exists(rutaArchivo))
            {
                Directory.CreateDirectory(rutaArchivo);
            }

            //Se guarda de manera local el archivo
            var rutaG = Path.Combine(rutaArchivo, FUImportar.FileName);
            FUImportar.SaveAs(rutaG);
            //Se crea un nuevo libro
            IWorkbook MiExcel = null;
            //Se accwede al archivo en modo lectora
            FileStream fs = new FileStream(rutaG, FileMode.Open, FileAccess.Read);

            if (Path.GetExtension(rutaG) == ".xlsx")
                MiExcel = new XSSFWorkbook(fs);
            else
                MiExcel = new HSSFWorkbook(fs);
            ISheet hoja = MiExcel.GetSheetAt(0);
            DataTable table = new DataTable();
            table.Columns.Add("TITULO", typeof(string));
            table.Columns.Add("CLASIFICACION", typeof(string));
            table.Columns.Add("GENERO", typeof(string));
            table.Columns.Add("DESARROLLADOR", typeof(string));
            table.Columns.Add("IMAGEN", typeof(string));


            if (hoja != null)
            {
                int cantidadfilas = hoja.LastRowNum;

                for (int i = 1; i <= cantidadfilas; i++)
                {
                    IRow fila = hoja.GetRow(i);
                    if (fila != null)
                        table.Rows.Add(
                            fila.GetCell(0, MissingCellPolicy.RETURN_NULL_AND_BLANK) != null ? fila.GetCell(0, MissingCellPolicy.RETURN_NULL_AND_BLANK).ToString() : "",
                            fila.GetCell(1, MissingCellPolicy.RETURN_NULL_AND_BLANK) != null ? fila.GetCell(1, MissingCellPolicy.RETURN_NULL_AND_BLANK).ToString() : "",
                            fila.GetCell(2, MissingCellPolicy.RETURN_NULL_AND_BLANK) != null ? fila.GetCell(2, MissingCellPolicy.RETURN_NULL_AND_BLANK).ToString() : "",
                            fila.GetCell(3, MissingCellPolicy.RETURN_NULL_AND_BLANK) != null ? fila.GetCell(3, MissingCellPolicy.RETURN_NULL_AND_BLANK).ToString() : "",
                            fila.GetCell(4, MissingCellPolicy.RETURN_NULL_AND_BLANK) != null ? fila.GetCell(4, MissingCellPolicy.RETURN_NULL_AND_BLANK).ToString() : ""

                            );
                }
            }
            gvProdUP.DataSource = table;
            gvProdUP.DataBind();

            int res = 0, conR = 0;
            if (gvProdUP.Rows.Count >= 1)
            {
                for (int i = 0; i < gvProdUP.Rows.Count; i++)
                {
                    res = objCarrito.insertarPro(Application["cnnCarrito"].ToString(),
                    gvProdUP.Rows[i].Cells[0].Text, int.Parse(gvProdUP.Rows[i].Cells[1].Text),
                    int.Parse(gvProdUP.Rows[i].Cells[3].Text), int.Parse(gvProdUP.Rows[i].Cells[2].Text), table.Rows[i]["IMAGEN"].ToString());
                    if (res == 0)
                    {
                        gvProdUP.Rows[i].BackColor = Color.Red;
                    }
                    else
                    {
                        gvProdUP.Rows[i].BackColor = Color.Green;
                    }
                }
            }
            ScriptManager.RegisterStartupScript(this, GetType(), "Producto", " GuardadoExi()", true);
            ListaProductos();
        }

        protected void gvProdUP_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvProdUP.PageIndex = e.NewPageIndex;

        }
    }
}