<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <s:include value="../include/cabecera_1.html" />
    <body>
        <!--top-header-->
    <s:include value="../include/headers_1.jsp" />
    <!--top-header-->
    <!--bottom-header-->
    <div class="header-bottom">
        <div class="container">
            <div class="top-nav">
                <ul class="memenu skyblue"><li class="active"><a href="#">Inicio</a></li>
                    <!-- Comprobamos si es usuario o administrador para mostrar el menu oportuno -->
                    <%
                        session = request.getSession(false);
                        if (session.getAttribute("tipoUsuarioo").equals("user")) {
                    %>

                    <s:include value="../include/menu/menuUser.jsp" ></s:include>

                    <%
                    } else {

                    %>       
                    <s:include value="../include/menu/menuAdmin.jsp" />
                    <%                                }
                    %>
            </div>
        </div>
    </div>
    <!--bottom-header-->
    <!--banner-starts-->
    <div class="bnr" id="home">
        <div  id="top" class="callbacks_container">
            <ul class="rslides" id="slider4">
                <li>
                    <div class="banner-1"></div>
                </li>
                <li>
                    <div class="banner-2"></div>
                </li>
                <li>
                    <div class="banner-3"></div>
                </li>
            </ul>
        </div>
        <div class="clearfix"> </div>
    </div>
    <!--banner-ends--> 
    <!--Slider-Starts-Here-->
    <script src="../js/responsiveslides.min.js"></script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 4
            $("#slider4").responsiveSlides({
                auto: true,
                pager: true,
                nav: false,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
    <!--End-slider-script-->
    <!--start-banner-bottom--> 
    <div class="banner-bottom">
        <div class="container">
            <div class="banner-bottom-top">
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!--end-banner-bottom--> 
    <!--start-shoes--> 
    <div class="shoes"> 
        <div class="container"> 
            <div class="product-one">
                <table align="center">
                    <tr align="center">
                        <td colspan="3"><h1><u>Actualizar Categoria</u></h1></td>
                    </tr>
                    <tr align="center">                                               


                    <s:form action="/actions/modificarProducto" validate="true" >
                        <s:iterator value="listaProductos">
                            <s:textfield key="titulo" label="titulo" value="%{titulo}" ></s:textfield>
                            <s:textarea key="descripcion" label="descripcion" value="%{descripcion}" ></s:textarea>
                            <s:textfield key="precio" label="precio"  value="%{precio}" ></s:textfield>
                            <s:select  key="provincia" value="%{provincia}" label="Provincia" list="{'Álava','Albacete','Alicante','Almeria','Asturias','Ávila','Badajoz','Barcelona','Burgos','Cáceres','Cádiz','Cantabria','Castellón','Ceuta','Ciudad Real','Córdoba','Cuenca','Girona','Las Palmas','Granada','Guadalajara','Guipúzcoa','Huelva','Huesca','Islas Baleares','Jaén','A Coruña','La Rioja','León','Lleida','Lugo','Madrid','Málaga','Melilla','Murcia','Navarra','Ourense','Palencia','Pontevedra','Salamanca','Segovia','sevilla','Soria','Tarragona','Santa Cruz de Tenerife','Teruel','Toledo','Valencia','Vallalodid','Vizcaya','Zamora','Zaragoza'}"></s:select>       
                            <s:hidden key="imagen" name="imagen"  value="%{imagen}"/>
                            <s:hidden key="idUsuario" name="idUsuario" value="%{#session.idUsuarioLogado}" />"
                            <s:hidden key="idProducto" name="idProducto" value="%{idProducto}" />"
                            <s:hidden key="idSubCategoria" name="idSubCategoria" value="%{idSubCategoria}" />"
                            <s:hidden key="vendido" name="vendido" value="%{vendido}" />"
                            <s:hidden key="activo" name="activo" value="%{activo}" />"
                            <s:hidden key="fechaVenido" name="fechaVendido" value="%{fechaVendido}" />"
                            <s:hidden key="fechaAlta" name="fechaAlta" value="%{fechaAlta}" />"
                        </s:iterator>
                        <s:submit value="Actualizar"></s:submit>
                    </s:form>
                </table>
            </div>
        </div>
    </div>
    <!--end-shoes-->
    <!--start-abt-shoe-->

    <!--end-abt-shoe-->
    <!--start-footer-->
    <!--<div class="footer">
        <div class="container">
            <div class="footer-top">
                <div class="col-md-3 footer-left">
                    <h3>ABOUT US</h3>
                    <ul>
                        <li><a href="#">Who We Are</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Our Sites</a></li>
                        <li><a href="#">In The News</a></li>
                        <li><a href="#">Team</a></li>
                        <li><a href="#">Carrers</a></li>					 
                    </ul>
                </div>
                <div class="col-md-3 footer-left">
                    <h3>YOUR ACCOUNT</h3>
                    <ul>
                        <li><a href="#">Your Account</a></li>
                        <li><a href="#">Personal Information</a></li>
                        <li><a href="#">Addresses</a></li>
                        <li><a href="#">Discount</a></li>
                        <li><a href="#">Track your order</a></li>					 					 
                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>--!
    <!--end-footer-->
    <!--end-footer-text-->
    <div class="footer-text">
        <div class="container">
            <div class="footer-main">
                <s:include value="../include/reserved.html" />
            </div>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */

                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    </div>
    <!--end-footer-text-->	
</body>
</html>
