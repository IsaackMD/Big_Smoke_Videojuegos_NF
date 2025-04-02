<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="wfDetalleP.aspx.cs" Inherits="Big_Smoke.Formulario_web12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Encabezado" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Big-Smoke:Detalles Prod</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="Plantillas/startbootstrap-shop-item-gh-pages/assets/favicon.ico" />
    <script src="Plantillas/startbootstrap-shop-item-gh-pages/js/scripts.js"></script>
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/themes/krajee-svg/theme.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/css/star-rating.min.css" media="all" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/js/star-rating.min.js" type="text/javascript"></script>
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/themes/krajee-svg/theme.js"></script>

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
                         <div class="d-flex justify-content-between align-items-center">
                            <h5 class="review-count">Deje Su Calificación</h5>
                        </div>

                        <div class="mt-1 d-flex justify-content-between align-items-center">
                            <div class="small-ratings">
                                <input id="input-1" name="input-1" class="rating rating-loading" data-min="0" data-max="5" data-step="1" >
                            </div>
                        </div>
                        <div class="d-flex">
                             <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Agregar Productos" runat="server" ID="Agregar" OnClick="Agregar_Click"/></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

</asp:Content>
