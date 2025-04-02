<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente/mpUsuario_Principal.Master" AutoEventWireup="true" CodeBehind="wfUsu_Inicio.aspx.cs" Inherits="Big_Smoke.Cliente.Formulario_web1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Encabezado" runat="server">
    <title>Big-Smoke: Client Inicio</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../boostrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../boostrap/css/cover.css" rel="stylesheet" />
    <link href="../Plantillas/Carrusel/carousel.css" rel="stylesheet" />

    

    <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
        <main class="px-3">
            <h1>Bienvenido  <%=Session["NombreUsuario"]%></h1>
            <p class="lead">Ingresaste como cliente</p>
        </main>
    </div>
    <div class="container col-12">
        <div class="p-3 r-3 text-center bg-dark bg-gradient text-white">
            <h1>Próximos lanzamientos</h1>
        </div>
    
    
    <div id="myCarousel" class="carousel slide mb-6" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                    <rect width="100%" height="100%" fill="var(--bs-secondary-color)" />
                </svg>

                <div class="container">
                    <div class="carousel-caption text-start">
                        <h1>Shujinko Impact</h1>
                        <p class="opacity-75">La historia de un protagonista que vive aventuras</p>
                        <p><a class="btn btn-lg btn-primary" href="#">Reservar</a></p>
                    </div>
                </div>
            </div>

            <div class="carousel-item">
                <div class="bg-image">
                    <img src="../Plantillas/Carrusel/Imagenes/Right4Alive.jpeg" width="1500" height="520" class="d-block w-100" />
                    <div class="mask" style="background-color: hsla(0, 0%, 0%, 0.6)"></div>
                </div>
                <svg class="" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                    <rect width="100%" height="100%" fill="var(--bs-secondary-color)" />
                </svg>

                <div class="container">
                    <div class="carousel-caption text-light">
                        <h1>Right 4 Alive</h1>
                        <p>Definitivamente no es una copia de Left 4 Dead</p>
                        <p><a class="btn btn-lg btn-primary" href="#">Reservar</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <svg class="" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                    <rect width="100%" height="100%" fill="var(--bs-secondary-color)" />
                </svg>
                <div class="container">
                    <div class="carousel-caption text-end">
                        <h1>Yandere Simulator</h1>
                        <p>Un juego con un cepillo de dientes que pesa 20GB</p>
                        <p><a class="btn btn-lg btn-primary" href="#">Juégalo ya</a></p>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
        </div>
     <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Nuevo Lanzamiento</div>
                            <!-- Product image-->
                             <img src="../Imagenes/3432322-grand-theft-auto-v-premium-online-edition-playstation-4-front-co.png" class="img-fluid rounded" alt="Responsive image" />
                           <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                     <h5 class="fw-bolder">GTA V - Edición Premium</h5>
                                    <!-- Product price-->
                                 </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto" runat="server" ID="btnAgregar15" OnClick="btnAgregar15_Click"/></div>            
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="../Imagenes/SI_WiiU_TheLegendOfZeldaBreathOfTheWild_image1600w.jpg" class="img-fluid rounded" alt="Responsive image" />
                          <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Legend of Zelda: BOTW</h5>
                                    <!-- Product price-->
                                    
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto" runat="server" ID="btnAgregar16" OnClick="btnAgregar16_Click"/></div>            
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            
                            <img src="../Imagenes/minecraft.jpg" class="img-fluid rounded" alt="Responsive image" />
                          <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                     <h5 class="fw-bolder">Minecraft</h5>
                                    <!-- Product price-->
                                    
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto" runat="server" ID="btnAgregar17" OnClick="btnAgregar17_Click"/></div>            
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                              <img src="../Imagenes/fifa-23-image.jpg" class="img-fluid rounded" alt="Responsive image" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">FIFA 23</h5>
                                    <!-- Product price-->
                                   
                                </div>
                            </div>

                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto"  runat="server" ID="btnAgregar18" OnClick="btnAgregar18_Click"/></div>            
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="../Plantillas/Carrusel/Imagenes/Right4Alive.jpeg" class="img-fluid rounded" alt="Responsive image" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                   <h5 class="fw-bolder">Right 4 Alive</h5>
                                    <!-- Product price-->
                                    
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto"  runat="server" ID="btnAgregar19" OnClick="btnAgregar19_Click"/></div>            
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                         
                        <div class="card h-100">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Nuevo Lanzamiento</div>
                            <!-- Product image-->
                             <img src="../Imagenes/genshin-impact-15.jpg" class="img-fluid rounded" alt="Responsive image" />
                           <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                      <h5 class="fw-bolder">Genshin Impact</h5>
                                    <!-- Product price-->

                                 </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto"  runat="server" ID="btnAgregar20" OnClick="btnAgregar20_Click"/></div>            
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Nuevo Lanzamiento</div>
                            <!-- Product image-->
                             <img src="../Imagenes/Yandere-Simulator-Yan-Visual.jpg" class="img-fluid rounded" alt="Responsive image" />
                           <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                     <h5 class="fw-bolder">Yandere Simulator</h5>
                                    <!-- Product price-->
                                 </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto"  runat="server" ID="btnAgregar21" OnClick="btnAgregar21_Click"/></div>            
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Nuevo Lanzamiento</div>
                            <!-- Product image-->
                             <img src="../Imagenes/league-of-legends.jpg" class="img-fluid rounded" alt="Responsive image" />
                           <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                     <h5 class="fw-bolder">League of Legends</h5>
                                    <!-- Product price-->
                                 </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto"  runat="server" ID="btnAgregar22" OnClick="btnAgregar22_Click"/></div>            
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Nuevo Lanzamiento</div>
                            <!-- Product image-->
                             <img src="../Imagenes/3432322-grand-theft-auto-v-premium-online-edition-playstation-4-front-co.png" class="img-fluid rounded" alt="Responsive image" />
                           <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                     <h5 class="fw-bolder">GTA V - Edición Premium</h5>
                                    <!-- Product price-->
                                 </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto" runat="server" ID="Button1" OnClick="btnAgregar15_Click"/></div>             
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        
                        <div class="card h-100">
                            <!-- Product image-->
                            
                            <img src="../Imagenes/minecraft.jpg" class="img-fluid rounded" alt="Responsive image" />
                          <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                     <h5 class="fw-bolder">Minecraft</h5>
                                    <!-- Product price-->
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto" runat="server" ID="Button2" OnClick="btnAgregar17_Click"/></div>            
                            </div>
                        </div>
                    </div>
              
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="../Imagenes/SI_WiiU_TheLegendOfZeldaBreathOfTheWild_image1600w.jpg" class="img-fluid rounded" alt="Responsive image" />
                          <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Legend of Zelda: BOTW</h5>
                                    <!-- Product price-->
                                  
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto" runat="server" ID="Button3" OnClick="btnAgregar16_Click"/></div>            
                            </div>
                           
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="../Plantillas/Carrusel/Imagenes/Right4Alive.jpeg" class="img-fluid rounded" alt="Responsive image" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                   <h5 class="fw-bolder">Right 4 Alive</h5>
                                    <!-- Product price-->
                                    Próximamente
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto"  runat="server" ID="Button4" OnClick="btnAgregar19_Click"/></div>            
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>



    <script src="../boostrap/js/bootstrap.bundle.min.js"></script>
</asp:Content>
