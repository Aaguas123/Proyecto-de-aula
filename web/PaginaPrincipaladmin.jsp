<%-- 
    Document   : Pr
    Created on : 09-abr-2019, 14:36:58
    Author     : Aguas
--%>


<%@page import="Controlador.servicios.ControladorServicios"%>
<%@page import="Modelo.Servicios"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/EstilosPagPrincipal.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="img/favicon-32.png">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <title>nTèc</title>
    </head>
    <%-- 
  <%
         HttpSession ses = request.getSession();
         if (ses.getAttribute("s1") != null) {
             out.print("Bienvenid@" + ses.getAttribute("s1"));
         } else {
             response.sendRedirect("Login.jsp");
         }
         out.print("<br> <a href=Pr.jsp?c=1>Cerrar </a>");
         if (request.getParameter("c") != null) {

            ses.invalidate();
            response.sendRedirect("Login.jsp");
        }
    %> --%>

    <body>

        <header>

            <img width="50%" height="80%" src="img/blanc.png" > 
            <a class="en1" href="Login.jsp" > <img src="img/contrasena.png">  Cerrar Sesiòn </a> 
            <a class="en2" href="#"> <img src="img/buscar.png"></a>  <input class="en3" style="text"  >

            <div align="center" class="di111" >
                <nav id="menu" align="center" >
                    <ul>
                        <li><a class="item-r" href="PaginaPrincipal.jsp">Usuarios</a></li>
                        <li><a class="item-r" href="#">Promociones</a></li>                        
                        <li><a class="item-r" href="Cotizar.jsp">Cotizar</a></li>
                      
                        <li><a class="item-r" href="SolicitarServicios.jsp">Solicitar Servicio</a></li>
                        <li><a class="item-r" href="RegistroServicio.jsp">Registro de Servicios</a></li>
                        <li><a class="item-r" href="#">Ordenar</a></li>
                        <li><a class="item-r" href="#">Contactenos</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <section class="fot1">
            <br>
            <br>

            <div class="row" id="divil13" >

                <%--      <% for (Servicios c : ControladorServicios.lis()) {%> --%>
                <center>
                 <button class="btn btn-primary btn-lg disabled" id="Boton" name="button">
                    <table class="table table-hover"  id="tabla"  >

                        <tr>
                            <td> <label> Tipo</label> </td>          
                            <td><label> Nombres</label></td>
                            <td><label> Apellidos</label></td>
                            <td><label> CC/NIT</label></td>
                            <td><label> Email</label></td>
                            <td><label> Telefono</label></td>
                            <td><label> Telefono2</label></td>
                            <td><label> Direccion</label></td>
                            <td><label> Contraseña</label></td>
                        </tr>
                        <td><label> </label></td>
                        <td><label> </label></td>
                        <td><label> </label></td>
                        <td><label> </label></td>
                        <td><label> </label></td>
                        <td><label> </label></td>
                        <td><label> </label></td>
                        <td><label> </label></td>
                        <td><label> </label></td>
                        
                        </tr>

                     
                       
                    </table>

</button>
                    </center>
                </div>  



            


        </section>

    </body>
</html>
