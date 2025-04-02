<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="wfInicio.aspx.cs" Inherits="Big_Smoke.Formulario_web11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Encabezado" runat="server">
    <title>Big-Smoke: Inicio</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5" >
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">BIG SMOKE</h1>
                    <p class="lead fw-normal text-white-50 mb-0">Aquí Podras Encontrar Todo Lo Que Buscas, Menos a Tu Ex</p>
                </div>
            </div>
        </header>
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Nuevo Lanzamiento</div>
                            <!-- Product image-->
                             <img src="Imagenes/3432322-grand-theft-auto-v-premium-online-edition-playstation-4-front-co.png" class="img-fluid rounded" alt="Responsive image" />
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
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class=" btn btn-outline-success mt-auto" href="wfAcceso.aspx">Agregar a Carrito</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="Imagenes/SI_WiiU_TheLegendOfZeldaBreathOfTheWild_image1600w.jpg" class="img-fluid rounded" alt="Responsive image" />
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
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class=" btn btn-outline-success mt-auto" href="wfAcceso.aspx">Agregar a Carrito</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            
                            <img src="Imagenes/minecraft.jpg" class="img-fluid rounded" alt="Responsive image" />
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
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class=" btn btn-outline-success mt-auto" href="wfAcceso.aspx">Agregar a Carrito</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                              <img src="Imagenes/fifa-23-image.jpg" class="img-fluid rounded" alt="Responsive image" />
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
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class=" btn btn-outline-success mt-auto" href="wfAcceso.aspx">Agregar a Carrito</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="Plantillas/Carrusel/Imagenes/Right4Alive.jpeg" class="img-fluid rounded" alt="Responsive image" />
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
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class=" btn btn-outline-success mt-auto" href="wfAcceso.aspx">Agregar a Carrito</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                         
                        <div class="card h-100">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Nuevo Lanzamiento</div>
                            <!-- Product image-->
                             <img src="Imagenes/genshin-impact-15.jpg" class="img-fluid rounded" alt="Responsive image" />
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
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class=" btn btn-outline-success mt-auto" href="wfAcceso.aspx">Agregar a Carrito</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Nuevo Lanzamiento</div>
                            <!-- Product image-->
                             <img src="Imagenes/Yandere-Simulator-Yan-Visual.jpg" class="img-fluid rounded" alt="Responsive image" />
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
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class=" btn btn-outline-success mt-auto" href="wfAcceso.aspx">Agregar a Carrito</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Nuevo Lanzamiento</div>
                            <!-- Product image-->
                             <img src="Imagenes/league-of-legends.jpg" class="img-fluid rounded" alt="Responsive image" />
                           <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                     <h5 class="fw-bolder">League of Legends</h5>
                                    <!-- Product price-->
                                    Gratis
                                 </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto"  runat="server" ID="btnAgregar22" OnClick="btnAgregar22_Click"/></div>            
                            </div>
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class=" btn btn-outline-success mt-auto" href="wfAcceso.aspx">Agregar a Carrito</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Nuevo Lanzamiento</div>
                            <!-- Product image-->
                             <img src="Imagenes/3432322-grand-theft-auto-v-premium-online-edition-playstation-4-front-co.png" class="img-fluid rounded" alt="Responsive image" />
                           <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                     <h5 class="fw-bolder">GTA V - Edición Premium</h5>
                                    <!-- Product price-->
                                    $40.00
                                 </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto" runat="server" ID="Button1" OnClick="btnAgregar15_Click"/></div>             
                            </div>
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class=" btn btn-outline-success mt-auto" href="wfAcceso.aspx">Agregar a Carrito</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        
                        <div class="card h-100">
                            <!-- Product image-->
                            
                            <img src="Imagenes/minecraft.jpg" class="img-fluid rounded" alt="Responsive image" />
                          <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                     <h5 class="fw-bolder">Minecraft</h5>
                                    <!-- Product price-->
                                    $20.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto" runat="server" ID="Button2" OnClick="btnAgregar17_Click"/></div>            
                            </div>
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class=" btn btn-outline-success mt-auto" href="wfAcceso.aspx">Agregar a Carrito</a></div>
                            </div>
                        </div>
                    </div>
              
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="Imagenes/SI_WiiU_TheLegendOfZeldaBreathOfTheWild_image1600w.jpg" class="img-fluid rounded" alt="Responsive image" />
                          <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Legend of Zelda: BOTW</h5>
                                    <!-- Product price-->
                                    $60.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><asp:Button class="btn btn-outline-dark mt-auto" text="Ver Producto" runat="server" ID="Button3" OnClick="btnAgregar16_Click"/></div>            
                            </div>
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class=" btn btn-outline-success mt-auto" href="wfAcceso.aspx">Agregar a Carrito</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="Plantillas/Carrusel/Imagenes/Right4Alive.jpeg" class="img-fluid rounded" alt="Responsive image" />
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
                            <div class="card-footer p-2 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class=" btn btn-outline-success mt-auto" href="wfAcceso.aspx">Agregar a Carrito</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>
