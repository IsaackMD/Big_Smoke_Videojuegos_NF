<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/mpAdmin.Master" AutoEventWireup="true" CodeBehind="wfAdmin_Productos.aspx.cs" Inherits="Big_Smoke.Administrador.Formulario_web11" %>
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
    <title>Big-Smoke: Admin Productos</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="br-mainpanel" style="position: relative;">
        <h2 class="pd-12">Productos</h2>
        <div class="col-sm-6 col-xl-3">
            <div class="bg-br-primary rounded overflow-hidden">
              <div class="pd-25 d-flex align-items-center">
                <i class="ion-ios-game-controller-b tx-60 lh-0 tx-white op-7"></i>
                <div class="mg-l-20">
                  <p class="tx-10 tx-spacing-1 tx-mont tx-medium tx-uppercase tx-white-8 mg-b-10">Total Productos</p>
                  <p id="total" class="tx-24 tx-white tx-lato tx-bold mg-b-2 lh-1"> <%= Session["TotalPro"] %> </p>
                </div>
              </div>
            </div>
        </div>
        <div class="card m-4">
            <div class="card-header">
                <i class="ion-ios-game-controller-b me-1"></i> Lista De Videojuegos
            </div>
            <div class="card-body">
                <div class="row">

                    <div class="auto-style1 m-3">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">
                            Crear Nuevo Producto
                        </button>
                    </div>
                    <!-- Button trigger modal -->
                    

                    <!-- Modal -->
                    <div class="modal fade col-12" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Nuevo Producto</h5>
                            
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                  <div class="modal-body">
                    <div class="col-lg-12">
                        <div class="m-2">
                            <asp:FileUpload runat="server" ID="FUImportar"/>
                        </div>
                        <asp:GridView runat="server" ID="gvProdUP" class="table" AllowPaging="true" PageSize="5" OnPageIndexChanging="gvProdUP_PageIndexChanging" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="TITULO" HeaderText="TITULO" />
                                <asp:BoundField DataField="CLASIFICACION" HeaderText="CLASI" />
                                <asp:BoundField DataField="GENERO" HeaderText="GENERO" />
                                <asp:BoundField DataField="DESARROLLADOR" HeaderText="DESARR" />
                               <asp:ImageField DataAlternateTextField="IMAGEN" DataAlternateTextFormatString="IMAGEN" DataImageUrlField="IMAGEN" HeaderText="Imagen">
                                    <ControlStyle Height="50px" Width="65px" />
                                </asp:ImageField>


                            </Columns>
                        </asp:GridView>
                        
                    </div>
                          </div>
                          <div class="modal-footer">
                            <asp:Button name="btnGuardarPro" ID="btnGuardarPro" OnClick="btnGuardarPro_Click" class="btn btn-outline-success" runat="server" Text="Guardar"/> 
                            <button type="reset" class="btn btn-outline-danger tx-11 tx-uppercase pd-y-12 pd-x-25 tx-mont tx-medium" aria-label="Close" aria-hidden="true" data-dismiss="modal"> <i class="fa fa-close"></i> Cancelar</button>

                          </div>
                        </div>
                      </div>
                    </div>


                    <div class="auto-style1">
                        
                
                        <asp:GridView class="table table-bordered" ID="gvProductos" runat="server" Width="100%" AutoGenerateColumns="False" PageSize="5" OnPageIndexChanging="gvProductos_PageIndexChanging" AllowPaging="True">
                            <Columns>
                                <asp:BoundField DataField="NOM_VIDEOJUEGO" HeaderText="Titulo" />
                                <asp:BoundField DataField="Clasificacion" HeaderText="Clasificacion" />
                                <asp:BoundField DataField="Genero" HeaderText="Genero" />
                                <asp:BoundField DataField="NOM_DES" HeaderText="Desarrolladoras" />
                                <asp:ImageField DataAlternateTextField="video_img" DataAlternateTextFormatString="video_img" DataImageUrlField="video_img" HeaderText="Imagen" >
                                    <ControlStyle Height="55px" Width="70px" />
                                </asp:ImageField>
                            </Columns>
                        </asp:GridView>
                
                    </div>

                </div>
            </div>
        </div>
    </div>

     <script>
        function GuardadoExi() {
            Swal.fire({
                title: "Productos Guardados!",
                text: "Los  Productos Se Agregaron Exitosamente",
                icon: "success"
            });
        }

     </script>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</asp:Content>
