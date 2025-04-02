<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="wfAcceso.aspx.cs" Inherits="Big_Smoke.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Encabezado" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Twitter -->
    <meta name="twitter:site" content="@themepixels">
    <meta name="twitter:creator" content="@themepixels">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Bracket">
    <meta name="twitter:description" content="Premium Quality and Responsive UI for Dashboard.">
    <meta name="twitter:image" content="http://themepixels.me/bracket/img/bracket-social.png">

    <!-- Facebook -->
    <meta property="og:url" content="http://themepixels.me/bracket">
    <meta property="og:title" content="Bracket">
    <meta property="og:description" content="Premium Quality and Responsive UI for Dashboard.">

    <meta property="og:image" content="http://themepixels.me/bracket/img/bracket-social.png">
    <meta property="og:image:secure_url" content="http://themepixels.me/bracket/img/bracket-social.png">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="600">

    <!-- Meta -->
    <meta name="description" content="Premium Quality and Responsive UI for Dashboard.">
    <meta name="author" content="ThemePixels">

    <link href="Plantillas/Template_Bracket2.0-master/template/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="Plantillas/Template_Bracket2.0-master/template/lib/Ionicons/css/ionicons.css" rel="stylesheet" />
    <link href="Plantillas/Template_Bracket2.0-master/template/css/bracket.css" rel="stylesheet" />

    <title>Big-Smoke: Acceso</title>
    <script>
    function MostrarError() {
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'Acceso Denegado',
        });
        }
        function MostrarAcceso(usu_nombre,rol) {
            Swal.fire(
                'Acceso Permitido!',
                `Bienvenido ${usu_nombre} con rol ${rol}.`,
                'success'
            )
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="Plantillas/Template_Bracket2.0-master/template/lib/jquery/jquery.js"></script>
    <script src="Plantillas/Template_Bracket2.0-master/template/lib/popper.js/popper.js"></script>
    <script src="boostrap/js/bootstrap.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">

    <div class="d-flex align-items-center justify-content-center bg-br-primary ht-100v">

      <div class="login-wrapper wd-300 wd-xs-350 pd-25 pd-xs-40 bg-white rounded shadow-base">
        <div class="signin-logo tx-center tx-28 tx-bold tx-inverse"><span class="tx-normal">[</span> Big-Smoke <span class="tx-normal">]</span></div>
        <div class="tx-center mg-b-50">Inicio De Sesión</div>
        <div class="form-group">
            <p>Usuario: </p>
            <asp:TextBox type="text" id="usu_in" name="usu_in" class="form-control" placeholder="Ingrese Su Usuario" runat="server"/>
        </div><!-- form-group -->
        <div class="form-group py-3">
           <p>Contraseña: </p>
          <asp:TextBox type="password" id="contr_in" name="contr_in" class="form-control" placeholder="Ingrese Su Contraseña" runat="server"/>
          </div><!-- form-group -->
        <asp:Button type="submit" Text="Acceder" id="btnAcceso" name="btnAcceso" class="btn btn-info btn-block" runat="server" OnClick="btnAcceso_Click"/>

      </div><!-- login-wrapper -->
    </div><!-- d-flex -->



</asp:Content>
