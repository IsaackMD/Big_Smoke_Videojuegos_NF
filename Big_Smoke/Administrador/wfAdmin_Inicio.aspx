<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/mpAdmin.Master" AutoEventWireup="true" CodeBehind="wfAdmin_Inicio.aspx.cs" Inherits="Big_Smoke.Administrador.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- script.js --->
    <script src="../DataTable/js/scripts.js"></script>
    <!-- fontawesome/all.min.js --->
    <script src="../DataTable/js/all.min.js"></script>
    <!-- jquery.dataTables.js --->
    <script src="../DataTable/js/jquery.dataTables.js"></script>
    <!-- dataTables.responsive.js --->
    <script src="../DataTable/js/dataTables.responsive.js"></script>
    <!-- bootstrap.bundle.js --->
    <script src="../boostrap/js/bootstrap.bundle.js"></script>

    <!-- site.css --->
    <link href="../DataTable/css/Site.css" rel="stylesheet" />
    <!-- jquery.dataTables.css --->
    <link href="../DataTable/css/jquery.dataTables.css" rel="stylesheet" />
    <!-- responsive.dataTables.css --->
    <link href="../DataTable/css/responsive.dataTables.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            min-height: 1px;
            flex: 0 0 auto;
            max-width: 100%;

            padding-left: 1px;
            padding-right: 15px;
           
        }
    </style>
    <title>Big-Smoke: Admin Usuarios</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="br-mainpanel" style="position: relative;">
        <h2 class="pd-12">USUARIOS</h2>
        <div class="col-sm-6 col-xl-3">
            <div class="bg-br-primary rounded overflow-hidden">
              <div class="pd-25 d-flex align-items-center">
                <i class="ion ion-clock tx-60 lh-0 tx-white op-7"></i>
                <div class="mg-l-20">
                  <p class="tx-10 tx-spacing-1 tx-mont tx-medium tx-uppercase tx-white-8 mg-b-10">Total Usuarios</p>
                  <p id="total" class="tx-24 tx-white tx-lato tx-bold mg-b-2 lh-1"><%= Session["TotalUsu"] %></p>
                </div>
              </div>
            </div>
        </div>
        <div class="card m-4">
            <div class="card-header">
                <i class="fa fa-users me-1"></i> Lista de Usuarios
            </div>
            <div class="card-body">
                <div class="row">

                   <div class="auto-style1 m-3">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">
                            Crear Nuevo Usuario
                        </button>
                    </div>
                    <!-- Button trigger modal -->
                    

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Nuevo Usuario</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                  <div class="modal-body">
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label class="form-control-label">Nombre: <span class="tx-danger">*</span></label>
                            <br />
                             <asp:TextBox class="form-control" runat="server" ID="txtNombreUsu"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="form-control-label">Apellido Paterno: <span class="tx-danger">*</span></label>
                            <br />
                             <asp:TextBox class="form-control" runat="server" ID="ap"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="form-control-label">Apellido Materno: <span class="tx-danger">*</span></label>
                            <br />
                             <asp:TextBox class="form-control" runat="server" ID="am"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="form-control-label">Usuario: <span class="tx-danger">*</span></label>
                            <br />
                             <asp:TextBox class="form-control" runat="server" ID="txtUsuario"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="form-control-label">Celular: <span class="tx-danger">*</span></label>
                            <br />
                             <asp:TextBox class="form-control" runat="server" ID="txtCelular"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="form-control-label">Correo: <span class="tx-danger">*</span></label>
                            <br />
                             <asp:TextBox class="form-control" runat="server" ID="txtCorreo"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="form-control-label">Contraseña: <span class="tx-danger">*</span></label>
                            <br />
                             <asp:TextBox class="form-control" runat="server" ID="txtCon"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="form-control-label">Rol: <span class="tx-danger">*</span></label>
                             <asp:DropDownList class="form-control" runat="server"  ID="DropDownRol">
                                 <asp:ListItem Value="3" Text="Cliente"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Administrador"></asp:ListItem>
                            </asp:DropDownList>      
                        </div>
                    </div>
                          </div>
                          <div class="modal-footer">
                            <asp:Button name="btnGuardarUsu" ID="btnGuardarUsu" OnClick="btnCrearUsu_Click" class="btn btn-outline-success" runat="server" Text="Guardar"/> 
                            <button type="reset" class="btn btn-outline-danger tx-11 tx-uppercase pd-y-12 pd-x-25 tx-mont tx-medium" aria-label="Close" aria-hidden="true" data-dismiss="modal"> <i class="fa fa-close"></i> Cancelar</button>

                          </div>
                        </div>
                      </div>
                    </div>

                </div>
              
                <asp:GridView class="table table-bordered" ID="gvUsuarios" runat="server" AllowPaging="True" Width="100%" PageSize="5" AutoGenerateColumns="False" OnPageIndexChanging="gvUsuarios_PageIndexChanging" >
                    <Columns>
                        <asp:BoundField  DataField="ID_Us" HeaderText="ID" ><ItemStyle ForeColor="Black"/></asp:BoundField>
                        <asp:BoundField  DataField="Nombre" HeaderText="Nombre" ><ItemStyle ForeColor="Black"/></asp:BoundField>
                        <asp:BoundField  DataField="u_Us" HeaderText="Usuario"><ItemStyle ForeColor="Black"/></asp:BoundField>
                        <asp:BoundField  DataField="u_Celular" HeaderText="Celular"><ItemStyle ForeColor="Black"/></asp:BoundField>
                        <asp:BoundField  DataField="u_Correo" HeaderText="Correr"><ItemStyle ForeColor="Black"/></asp:BoundField>
                        <asp:BoundField  DataField="rolDesc" HeaderText="Rol"><ItemStyle ForeColor="Black"/></asp:BoundField>
                        <asp:BoundField  DataField="u_Estatus" HeaderText="Estatus" ><ItemStyle ForeColor="Black"/></asp:BoundField>
                    </Columns>
                </asp:GridView>
                <hr />



                </div>
            </div>
    </div>


    <script type="text/javascript">
        function MostrarVacio() {
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'Los Campos Estan Vacíos',
            });
        }
        function ErrorGuardUsu() {
            Swal.fire({
                icon: 'error',
                title: 'El Usuario Ya Existe',
                text: 'El Nombre De Usuario Ya Existe',
            });
        }
        function MostrarGuardar() {
            Swal.fire({
                icon: 'success',
                title: 'Creado Con Éxito',
                text: 'El Usuario Ha Sido Creado Correctamente',
            });
        }
        function MostrarAcceso(usu_nombre, rol) {
            Swal.fire(
                'Acceso Permitido!',
                `Bienvenido ${usu_nombre} con rol ${rol}.`,
                'success'
            )
        }
    </script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</asp:Content>
