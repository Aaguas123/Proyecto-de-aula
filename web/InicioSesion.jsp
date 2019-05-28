<%-- 
    Document   : Login
    Created on : 07-abr-2019, 12:42:37
    Author     : Aguas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/EstilosInicioSesion.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="img/favicon-32.png">
        <script type="text/javascript" src="jquery-3.3.1.min.js"></script>
        <style type="text/css" >
            .errores{
                margin-top: -64px;
                margin-left: 380px;
                -webkit-box-shadow: 0 0 10px rgba(0,0,0,0.1);
                -moz-box-shadow: 0 0 8px rgba(0,0,0,0.1);
                -o-box-shadow: 0 0 8px rgba(0,0,0,0.1);
                background: red;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
                color: #fff;
                display: none;
                font-size: 14px;
                border-radius: 15px;
                padding: 10px;
                position: absolute;
            }
        </style>

        <script>
            var expr = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
            $(document).ready(function () {
                $("#bEnviar").click(function () {
                    var Contra = $("#pass3").val();
                    var correo = $("#Correo").val();
                    if (correo == "" || !expr.test(correo)) {
                        $("#mensaje1").fadeIn();
                        return false;
                    } else {
                        $("#mensaje1").fadeOut();
                        if (Contra == "") {
                            $("#mensaje2").fadeIn();
                            return false;
                        }
                    }
                });
            });
        </script>
        <title>nTèc</title>
    </head>
    <body>    
        <header>
            <img width="700" height="250" src="img/blanc.png" > 
            <a class="en" href="RegistroUsuarios.jsp" > <img src="img/reg.png"> Registro Usuario </a>
            <a class="en2" href="RegistroProveedores.jsp" > <img src="img/reg.png"> Registro Proveedor </a>
        </header>

        <div class="section">
            <label class="lab4"> Inicio  Sesión</label> 

            <div class="container  well" id="Container1" >

                <center> <img width="40%" height="50%" src="img/login.png" alt=""/>  </center> 
                <form  action="./ControladorValidar" method="post">
                    <div class="form-group" >
                        <label class="Mail">Email</label>
                        <input class="form-control" class="log"type="text" id="Correo" name="Email" maxlength="30">
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje1" class="errores">Llenar campo</div>
                    </div>

                    <div class="form-group" >
                        <label class="Mail">Contraseña </label>
                        <input class="form-control" class="log"type="password" id="pass3" name="Contrasea" maxlength="30">
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje2" class="errores">Llenar campo</div>
                    </div>

                    <div class="form-group" >
                        <input class="btn btn-success"  class="input3" type="submit" name="b1" id="bEnviar" value="Registrar" >
                    </div>

                </form>
            </div>
            <%

                if (request.getAttribute("Existe") != null) {
                    if (request.getAttribute("Existe") == "1") {
                        HttpSession ses = request.getSession();
                        ses.setAttribute("s1", request.getAttribute("Nombre"));
                        response.sendRedirect("Pr.jsp");
                    } else {
                        out.print("<br>Explotado");
                    }
                }

            %>
        </div>

    </body>
</html>

