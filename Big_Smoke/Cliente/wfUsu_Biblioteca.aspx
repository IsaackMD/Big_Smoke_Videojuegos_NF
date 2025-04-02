<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente/mpUsuario_Principal.Master" AutoEventWireup="true" CodeBehind="wfUsu_Biblioteca.aspx.cs" Inherits="Big_Smoke.Cliente.Formulario_web11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Encabezado" runat="server">
    <title>Big-Smoke: Client Biblioteca</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../boostrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../boostrap/css/cover.css" rel="stylesheet" />
    <link href="../boostrap/css/font-awesome.css" rel="stylesheet" />
    <link href="../Plantillas/Carrusel/carousel.css" rel="stylesheet" />

       <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
            <main class="px-3">
                <h1>Biblioteca</h1>
                Juegos en propiedad: <asp:Label class="m-2" ID="lblContador" runat="server" Text="0"></asp:Label>
                <asp:GridView class="table table-bordered" ID="gvBiblioteca" runat="server" AutoGenerateColumns="false" AllowPaging="True" OnPageIndexChanging="gvBiblioteca_PageIndexChanging" PageSize="3">
                    <Columns>
                        <asp:BoundField DataField="ID_VENTA" HeaderText="Compra ID" />
                        <asp:BoundField DataField="NOM_VIDEOJUEGO" HeaderText="Titulo" />
                        <asp:BoundField DataField="Fecha_Compra" HeaderText="Fecha De Compra" />
                    </Columns>
               </asp:GridView>
                <asp:Label runat="server" id="lblPro" class="lead m-2">Aún no tienes juegos en tu cuenta</asp:Label>
            
                               
            </main>
    </div>

    <script src="../boostrap/js/bootstrap.bundle.min.js"></script>

</asp:Content>
