<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="wfAcerca_De.aspx.cs" Inherits="Big_Smoke.Formulario_web13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Encabezado" runat="server">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Enlace a Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
      <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Big-Smoke - Acerca de Nosotros</title>
    <!-- Enlace a Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">
           <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5" >
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Acerca De Nosotros</h1>
                </div>
            </div>
        </header>
        <section>
            <div class="container px-4 px-lg-5 mt-5 col-8">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                          <p class="py-2 m justify-content-center  m-">
                                Bienvenido a Big-Smoke, tu destino confiable y seguro para comprar juegos en línea. Nos enorgullece ofrecer una amplia selección de juegos de alta calidad para todas las plataformas.
                                En Big-Smoke, nos esforzamos por proporcionar una experiencia de compra conveniente y segura. Nuestro equipo está compuesto por entusiastas del juego que están comprometidos a brindarte el mejor servicio posible.
                                <br />
                                En Big-Smoke, nos esforzamos por proporcionar una experiencia de compra conveniente y segura. Nuestro equipo está compuesto por entusiastas del juego que están comprometidos a brindarte el mejor servicio posible.
                            </p>


                            <!-- Formulario de contacto -->
                <div class="container">
                     <div class="card col-12 m-4">
                             <div class="card-body">
           
                                <div class="col-md-12">
                                    <h3>Contacto</h3>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="nombre">Nombre:</label>
                                    <input type="text" class="form-control" id="nombre" placeholder="Ingresa tu nombre">
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="email">Correo electrónico:</label>
                                    <input type="email" class="form-control" id="email" placeholder="Ingresa tu correo electrónico">
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="mensaje">Mensaje:</label>
                                    <textarea class="form-control" id="mensaje" rows="6" placeholder="Ingresa tu mensaje"></textarea>
                                </div>
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-primary">Enviar Mensaje</button>
                                </div>
                            </div>
                    </div>
                </div>
                </div>
            </div>
            </div>
               
        </section>


    <!-- Enlace a Bootstrap JS y jQuery (opcional, dependiendo de tus necesidades) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

 
</asp:Content>
