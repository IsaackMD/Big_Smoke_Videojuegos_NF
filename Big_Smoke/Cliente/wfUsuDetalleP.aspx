<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente/mpUsuario_Principal.Master" AutoEventWireup="true" CodeBehind="wfUsuDetalleP.aspx.cs" Inherits="Big_Smoke.Cliente.Formulario_web13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Encabezado" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="Plantillas/startbootstrap-shop-item-gh-pages/assets/favicon.ico" />
    <script src="Plantillas/startbootstrap-shop-item-gh-pages/js/scripts.js"></script>
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <title>Big-Smoke: Client Detalles Prod</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">
        <section class="py-5">
        <div class="container px-4 px-lg-5 my-5">
            <div class="row gx-4 gx-lg-5 align-items-center">
                <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="<%=Session["Pro_Img"] %>" alt="..." /></div>
                <div class="col-md-6">
                    <div class="small mb-1"> Clasificación: <%=Session["ClaProd"] %></div>
                    <h1 class="display-5 fw-bolder"><asp:Label runat="server" ID="lbNomPro" ><%=Session["NomProd"] %></asp:Label></h1>
                    <p class="lead">Lorem ipsum dolor sit amet consectetur adipiscing elit scelerisque, cubilia magna metus purus maecenas iaculis ornare vel accumsan, sagittis leo senectus tristique vitae sem vehicula.</p>
                    <p class="lead"> Desarrolladora: <%=Session["DesaProd"] %></p>
                    <div class="d-flex">
                            <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Agregar Productos" runat="server" ID="Agregar" OnClick="Agregar_Click"/></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

