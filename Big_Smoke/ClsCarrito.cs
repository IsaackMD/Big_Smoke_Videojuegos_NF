using System;
using System.Data;
using MySql.Data.MySqlClient;

namespace Big_Smoke
{
    public class ClsCarrito
    {
        string usu, contr, nom_Usu, rol, ap_usu, am_usu, celu, correo;
        int clave, totalusu, totalPro, totalCom;
        string nompro, clapro, desapro, img;

        public ClsCarrito()
        {
            this.usu = "";
            this.contr = "";
            this.nom_Usu = "";
            this.rol = "";
            this.clave = 0;
            this.ap_usu = "";
            this.am_usu = "";
            this.celu = "";
            this.correo = "";

        }

        public ClsCarrito(int id)
        {
            this.nompro = "";
            this.clapro = "";
            this.desapro = "";
            this.img = "";

        }
        ~ClsCarrito()
        {
            System.GC.Collect();
        }

        public string Usu { get => usu; set => usu = value; }
        public string Contr { get => contr; set => contr = value; }
        public string Nom_Usu { get => nom_Usu; set => nom_Usu = value; }
        public string Rol { get => rol; set => rol = value; }
        public int Clave { get => clave; set => clave = value; }
        public string Ap_usu { get => ap_usu; set => ap_usu = value; }
        public string Am_usu { get => am_usu; set => am_usu = value; }
        public string Celu { get => celu; set => celu = value; }
        public string Correo { get => correo; set => correo = value; }
        public string Nompro { get => nompro; set => nompro = value; }
        public string Clapro { get => clapro; set => clapro = value; }
        public string Desapro { get => desapro; set => desapro = value; }
        public string Nompro1 { get => nompro; set => nompro = value; }
        public string Clapro1 { get => clapro; set => clapro = value; }
        public string Desapro1 { get => desapro; set => desapro = value; }
        public string Img { get => img; set => img = value; }

        public MySqlConnection cnn;
        public MySqlCommand cmd;
        public MySqlDataAdapter da;
        public MySqlDataReader dr;
        public DataSet ds;

        public void validarAcceso(string CadConexion)
        {
            cnn = new MySqlConnection
            {
                ConnectionString = CadConexion
            };

            cmd = new MySqlCommand();
            cmd.CommandText = "call login('" + usu + "','" + contr + "');";
            cmd.Connection = cnn;
            cnn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                clave = int.Parse(dr.GetValue(0).ToString());
                if (clave != 0)
                {
                    nom_Usu = dr.GetValue(1).ToString();
                    rol = dr.GetValue(2).ToString();
                }
            }
            dr.Close();
            cnn.Close();
        }

        public void obtenerInfoUsu(string CadConexion, int clave)
        {
            cnn = new MySqlConnection
            {
                ConnectionString = CadConexion
            };

            cmd = new MySqlCommand();
            cmd.CommandText = "call BuscarUsu('" + clave + "');";
            cmd.Connection = cnn;
            cnn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                nom_Usu = dr.GetValue(0).ToString();
                ap_usu = dr.GetValue(1).ToString();
                am_usu = dr.GetValue(2).ToString();
                contr = dr.GetValue(3).ToString();
                celu = dr.GetValue(4).ToString();
                correo = dr.GetValue(5).ToString();
                rol = dr.GetValue(6).ToString();
            }
            dr.Close();
            cnn.Close();
        }


        public string actualizarUsu(string cadeConexion, int clave, string nom, string ap, string am, string email, string cont, string tel)
        {
            string resultado = "";
            cnn = new MySqlConnection
            {
                ConnectionString = cadeConexion
            };

            cmd = new MySqlCommand();
            cmd.CommandText = "call editarUsu('" + clave + "','" + nom + "','" + ap + "','" + am + "','" + email + "','" + cont + "','" + tel + "');";
            cmd.Connection = cnn;
            cnn.Open();
            dr = cmd.ExecuteReader();
            resultado = "0";
            while (dr.Read())
            {
                resultado = dr.GetValue(0).ToString();
            }
            dr.Close();
            cnn.Close();

            return resultado;
        }

        public DataSet ListarUsuarios(String cadeConexion)
        {
            da = new MySqlDataAdapter("call tspListarUsu();", cadeConexion);
            ds = new DataSet();
            da.Fill(ds, "ListaUsuarios");
            return ds;
        }

        public DataSet ListarProductos(String cadeConexion)
        {
            da = new MySqlDataAdapter("call tspListaProductos();", cadeConexion);
            ds = new DataSet();
            da.Fill(ds, "ListaProductos");
            return ds;
        }

        public DataSet ListarVentas(String cadeConexion, int opc)
        {
            da = new MySqlDataAdapter("call spListarCompras(" + opc + ");", cadeConexion);
            ds = new DataSet();
            da.Fill(ds, "ListaVentas");
            return ds;
        }

        public DataSet BibliotecaUsu(String cadeConexion, int op, int clave)
        {
            da = new MySqlDataAdapter("call bibliotecaUs('" + op + "','" + clave + "');", cadeConexion);
            ds = new DataSet();
            da.Fill(ds, "BibliotecaUS");
            return ds;
        }

        public int TotalUsuarios(String cadeConexion)
        {
            cnn = new MySqlConnection
            {
                ConnectionString = cadeConexion
            };

            cmd = new MySqlCommand();
            cmd.CommandText = "call spTotalUsuarios();";
            cmd.Connection = cnn;
            cnn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                totalusu = int.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            cnn.Close();

            return totalusu;
        }

        public int TotalProductos(String cadeConexion)
        {
            cnn = new MySqlConnection
            {
                ConnectionString = cadeConexion
            };

            cmd = new MySqlCommand();
            cmd.CommandText = "call spTotalProducto();";
            cmd.Connection = cnn;
            cnn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                totalPro = int.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            cnn.Close();

            return totalPro;
        }
        public int TotalCompras(String cadeConexion)
        {
            cnn = new MySqlConnection
            {
                ConnectionString = cadeConexion
            };

            cmd = new MySqlCommand();
            cmd.CommandText = "call spTotalCompras();";
            cmd.Connection = cnn;
            cnn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                totalCom = int.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            cnn.Close();

            return totalCom;
        }

        public int BibliotecaTotal(String cadeConexion, int clave)
        {
            cnn = new MySqlConnection
            {
                ConnectionString = cadeConexion
            };

            cmd = new MySqlCommand();
            cmd.CommandText = "call tspTotalB('" + clave + "');";
            cmd.Connection = cnn;
            cnn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                totalusu = int.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            cnn.Close();

            return totalusu;
        }

        public void insertarVenta(String cadeConexion, int id_usu, int idVideo)
        {
            cnn = new MySqlConnection
            {
                ConnectionString = cadeConexion
            };

            cmd = new MySqlCommand();
            cmd.CommandText = "call spRegistrarCompra('" + id_usu + "','" + idVideo + "');";
            cmd.Connection = cnn;
            cnn.Open();
            dr = cmd.ExecuteReader();

            dr.Close();
            cnn.Close();

        }
        public int insertarUsuario(String cadeConexion, string p_u_Nombre, string Ap, string Am, string us, string contra, string celu, string correo, int rol)
        {
            int res = 0;
            cnn = new MySqlConnection
            {
                ConnectionString = cadeConexion
            };

            cmd = new MySqlCommand();
            cmd.CommandText = "call InsertarUsuario('" + p_u_Nombre + "','" + Ap + "','" + Am + "','" + us + "','" + contra + "','" + celu + "','" + correo + "','" + rol + "');";
            cmd.Connection = cnn;
            cnn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                res = int.Parse(dr.GetValue(0).ToString());

            }
            dr.Close();
            cnn.Close();

            return res;

        }
        public int insertarPro(String cadeConexion, string titulo, int cla, int desarr, int gene, string img)
        {
            int res = 0;
            cnn = new MySqlConnection();
            cnn.ConnectionString = cadeConexion;
            cmd = new MySqlCommand();
            cmd.CommandText = "call InsertarPro('" + titulo + "','" + cla + "','" + desarr + "','" + gene + "','" + img + "');";
            cmd.Connection = cnn;
            cnn.Open();
            res = cmd.ExecuteNonQuery();

            cnn.Close();
            return res;

        }

        public void producto_info(String cadeConexion, int idproducto)
        {
            cnn = new MySqlConnection
            {
                ConnectionString = cadeConexion
            };

            cmd = new MySqlCommand();
            cmd.CommandText = "call Producto_x_id('" + idproducto + "');";
            cmd.Connection = cnn;
            cnn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                nompro = dr.GetValue(1).ToString();
                clapro = dr.GetValue(2).ToString();
                desapro = dr.GetValue(3).ToString();
                img = dr.GetValue(4).ToString();
            }
            dr.Close();
            cnn.Close();

        }

        public string existente_Pro(string cadeConexion, int idusu, int prod)
        {
            string existe = "0";
            cnn = new MySqlConnection
            {
                ConnectionString = cadeConexion
            };

            cmd = new MySqlCommand();
            cmd.CommandText = "call ValidarPro('" + idusu + "','" + prod + "');";
            cmd.Connection = cnn;
            cnn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                existe = dr.GetValue(0).ToString();

            }
            dr.Close();
            cnn.Close();


            return existe;
        }
        public string confirmarCompra(string cadeConexion, int idusu, int prod)
        {
            string existe = "0";
            cnn = new MySqlConnection
            {
                ConnectionString = cadeConexion
            };

            cmd = new MySqlCommand();
            cmd.CommandText = "call ConfirmarCompra('" + idusu + "','" + prod + "');";
            cmd.Connection = cnn;
            cnn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                existe = dr.GetValue(0).ToString();

            }
            dr.Close();
            cnn.Close();


            return existe;
        }

        public string eliminarCompra(string cadeConexion, int idVenta, int prod)
        {
            string existe = "0";
            cnn = new MySqlConnection
            {
                ConnectionString = cadeConexion
            };

            cmd = new MySqlCommand();
            cmd.CommandText = "call Elim_x_Carrito('" + idVenta + "','" + prod + "');";
            cmd.Connection = cnn;
            cnn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                existe = dr.GetValue(0).ToString();

            }
            dr.Close();
            cnn.Close();


            return existe;
        }
    }
}