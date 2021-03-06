<%-- 
    Document   : index
    Created on : Oct 15, 2014, 8:17:55 PM
    Author     : rae
--%>

<%
    /*Obtener la sesion ya iniciada*/
    HttpSession sesion = request.getSession(true);
    String tipo = (String)sesion.getAttribute("identidad");
    
    if(sesion.getAttribute("identidad") != null){
           if(tipo.equals("administrador")){
               response.sendRedirect("administrador.jsp");
           } 
    }
   
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Inicio Sesión - Inventario IIB</title>
        
        <!--Imagen pestaña-->
        <link rel="shortcut icon" type="image/x-icon" href="img/escudoUnamNegro.png">

        <!--JavaScript-->
        <script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
        <script src="js/iniciarSesion.js"></script>

        <!--Estilos plantilla-->
        <link rel="stylesheet" href="css/6cols.css">
        <link rel="stylesheet" href="css/4cols.css">
        <link rel="stylesheet" href="css/2cols.css">
        <link rel="stylesheet" href="css/col.css">
        <link rel="stylesheet" href="css/estilosPlantilla.css">
        <link rel="stylesheet" href="css/formulario.css">

        <!--Estilo único página-->
        <link rel="stylesheet" href="css/index.css">

    </head>
    <body>
        <!--Inicio encabezado-->
        <header>
            <div class="section group" id="encabezado">
                <div class="col span_1_of_6">
                    <img src="img/escudoUnam.png" height="40%" width="40%" alt="escudo unam" id="imagenUnam">
                </div>
                <div class="col span_4_of_6" id="nombreInstituto">
                    <span>Instituto de<br>Investigaciones<br>Bibliográficas</span>
                </div>
                <div class="col span_1_of_6">
                    <img src="img/logoBiblioteca.png" height="80%" width="80%" alt="escudo biblioteca" id="imagenBiblioteca">
                </div>
            </div>
            <div class="section group" id="barra">
                <div id="login">
                    <br>
                </div>
            </div>
        </header>
        <!--Fin encabezado-->

        <!--Inicio contenido principal-->
        <div class="section group" id="main">
            <!--Inicio descripcion del sistema-->
            <div class="col span_1_of_2" id="inicio">
                <h1>Inventario del Instituo de Investigaciones Bibliográficas</h1>
                <center><img src="img/instituto.jpg" alt="instituto biblioteca"></center>
                <p>Este sistema surgió por la necesidad de automatizar la administración
                    de los equipos que se encuentran distribuidos en <br> 
                    la Hemeroteca Nacional de México, la Biblioteca Nacional de México y el Instituto de Investigaciones Bibliográficas <br>
                    para poder tener un mejor control de los equipos.</p>
            </div>
            <!--Fin descripcion del sistema-->

            <div class="col span_1_of_2">
                <!--Inicio formulario inicio de sesión-->
                <form action="IniciarSesion" id="inicio_sesion" class="smart-blue" onsubmit="return valida_inicio_sesion()">
                    <fieldset>
                        <legend>Ingresar</legend>
                        <div>
                            <label for="usuario">Usuario:</label>
                            <input type="text" id="usuario" name="login" value="">
                            <br><br>
                            <label for="contrasenia">Contraseña:</label>
                            <input type="password" id="contrasenia"  name="contrasenia" value="">
                            <br><br>
                            <input type="submit" class="button" value="Aceptar">
                        </div>
                    </fieldset>
                </form>
                <!--fin formulario inicio de sesión-->
                <!--Inicio error-->
                <div class="section group" id="error">
                    <p>


                        <!--Mensaje error-->
                        <span>Login o contraseña incorrecta</span>
                    </p>
                </div>
                <!--Fin errror-->
            </div>

        </div>
        <!--Fin contenido principal-->

        <!--Inicio pie-->
        <footer>
            <div class="section group" id="pie">
                <p>Hecho en México, todos los derechos reservados 2014. Esta página puede ser reproducida con fines no lucrativos, siempre y cuando no se mutile, se cite la fuente completa y su dirección electrónica. De otra forma requiere permiso previo por escrito de la Institución.</p>
            </div>
        </footer>
        <!--Fin pie-->
    </body>
</html>
