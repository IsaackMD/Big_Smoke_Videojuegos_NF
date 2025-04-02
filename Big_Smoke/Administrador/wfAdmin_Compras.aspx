<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/mpAdmin.Master" AutoEventWireup="true" CodeBehind="wfAdmin_Compras.aspx.cs" Inherits="Big_Smoke.Administrador.Formulario_web13" %>
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
    <title>Big-Smoke: Admin Ventas</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="br-mainpanel" style="position: relative;">
        <h2 class="pd-12">Ventas</h2>
        <div class="col-sm-6 col-xl-3">
            <div class="bg-br-primary rounded overflow-hidden">
              <div class="pd-25 d-flex align-items-center">
                <i class="ion-ios-pricetags tx-60 lh-0 tx-white op-7"></i>
                <div class="mg-l-20">
                  <p class="tx-10 tx-spacing-1 tx-mont tx-medium tx-uppercase tx-white-8 mg-b-10">Total Ventas</p>
                  <p id="total" class="tx-24 tx-white tx-lato tx-bold mg-b-2 lh-1"> <%= Session["TotalCom"] %> </p>
                </div>
              </div>
            </div>
        </div>
        <div class="card m-4">
            <div class="card-header">
                <i class="ion-ios-pricetags me-1"></i> Lista De Ventas
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="auto-style1">
                        <div class="auto-style1 m-3">
                             <asp:Button ID="btnTopVen" runat="server" OnClick="btnTopVen_Click" CssClass="btn btn-outline-secondary" Text="Ver Juegos más Vendidos"/>
                             <asp:Button ID="btnVentas" runat="server" OnClick="btnVentas_Click" CssClass="btn btn-outline-primary" Text="Registro de Ventas"/>
                        </div>
                       
                        <asp:GridView class="table table-bordered" ID="gvCompras" runat="server" Width="100%" PageSize="5" OnPageIndexChanging="gvCompras_PageIndexChanging">
                            <Columns>
                            </Columns>
                        </asp:GridView>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
