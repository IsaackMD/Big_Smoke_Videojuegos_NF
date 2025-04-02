<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente/mpUsuario_Principal.Master" AutoEventWireup="true" CodeBehind="wfUsuCarrito.aspx.cs" Inherits="Big_Smoke.Cliente.Formulario_web14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Encabezado" runat="server">
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../boostrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../boostrap/css/cover.css" rel="stylesheet" />
    <link href="../boostrap/css/font-awesome.css" rel="stylesheet" />
    <link href="../Plantillas/Carrusel/carousel.css" rel="stylesheet" />
        <script src="../boostrap/js/bootstrap.bundle.min.js"></script>
    <title>Big-Smoke: Client Carrito</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">
     <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
            <main class="px-3">  
                <h2>
                <asp:Label runat="server" ID="lbTitulo" Text="Carrito De Compras"></asp:Label>
                </h2>
                 <asp:GridView class="table" ID="gvCarrito" runat="server" AllowPaging="True" PageSize="5" OnPageIndexChanging="gvCarrito_PageIndexChanging" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                               <asp:CheckBox runat="server" ID="ckSelect" EnableViewState="true" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ID_VENTA" HeaderText="ID Venta" />
                        <asp:BoundField DataField="ID_VIDEOJUEGO" HeaderText="ID Producto" />
                        <asp:BoundField DataField="NOM_VIDEOJUEGO" HeaderText="Titulo" />
                        <asp:ImageField DataAlternateTextField="video_img" DataAlternateTextFormatString="video_img" DataImageUrlField="video_img" HeaderText="Imagen" >
                            <ControlStyle Height="55px" Width="70px" />
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
                
                <div>
                    <div class="d-flex align-items-center justify-content-center  col-12">
                    <asp:Button class="btn btn-outline-success m-2" runat="server" ID="btnConfitm" Text="Confirmar Compra"  OnClick="btnConfitm_Click"/>
                    <asp:Button class="btn btn-outline-danger m-2" runat="server" ID="btnElim" Text="Eliminar Producto" OnClick="btnElim_Click"/>
                </div>
                </div>
            </main>
        </div>
<script>
    function MostrarCompra() {
        Swal.fire({
            icon: 'success',
            title: 'Juego Comprado',
            text: 'Espero Disfrute Su Compra. :D',
        });
    }
    function ElimCompra() {
        Swal.fire({
            icon: 'success',
            title: 'Eliminado Con Exito',
            text: 'El Videojuego Se Elimino Del Carrito',
        });
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</asp:Content>
