<%-- 
    Document   : n
    Created on : 10-abr-2019, 20:21:33
    Author     : Aguas
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/EstilosRServicios2.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="jquery.numeric.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="img/favicon-32.png">
        <title>JSP Page</title>
        <style type="text/css" >
            .errores{
                padding: 10px;
                position: absolute;
                -webkit-box-shadow: 0 0 10px rgba(0,0,0,0.1);
                -moz-box-shadow: 0 0 8px rgba(0,0,0,0.1);
                -o-box-shadow: 0 0 8px rgba(0,0,0,0.1);
                background: red;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
                color: #fff;
                display: none;
                font-size: 14px;
                margin-top: -61.8px;
                margin-left: 570px;
                border-radius: 15px;
                padding: 10px;
                position: absolute;
            }
        </style>

        <script>
            $(document).ready(function () {
                $("#bEnviar").click(function () {
                    var F = $("#Roble").val();
                    var C = $("#Cod1").val();
                    var D = $("#CC").val();
                    var D4 = $("#cod4").val();
                    var T = $("#tipo1").val();
                    var D2 = $("#DD").val();
                    var D3 = $("#marca1").val();
                    var D5 = $("#NitP").val();

                    if (F == "") {
                        $("#mensaje1").fadeIn();
                        return false;
                    } else {
                        $("#mensaje1").fadeOut();
                        if (C == "") {
                            $("#me").fadeIn();
                            return false;
                        } else {
                            $("#me").fadeOut();
                            if (D == "") {
                                $("#mensaje3").fadeIn();
                                return false;
                            } else {
                                $("#mensaje3").fadeOut();
                                if (D4 == "") {
                                    $("#mensaje33").fadeIn();
                                    return false;
                                } else {
                                    $("#mensaje33").fadeOut();
                                    if (T == "") {
                                        $("#mensaje4").fadeIn();
                                        return false;
                                    } else {
                                        $("#mensaje4").fadeOut();
                                        if (D2 == "") {
                                            $("#mensaje5").fadeIn();
                                            return false;
                                        } else {
                                            $("#mensaje5").fadeOut();
                                            if (D3 == "") {
                                                $("#mensaje6").fadeIn();
                                                return false;
                                            } else {
                                                $("#mensaje6").fadeOut();
                                                if (D5 == "") {
                                                    $("#mensaje7").fadeIn();
                                                    return false;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                });
            });
        </script>

        <script>
            $(document).ready(function () {
                validar()
            });
            function validar() {
                $(".SoloPositivo").numeric({decimal: false, negative: false}, function () {
                    alert("Positive integers only");
                    this.value = "";
                    this.focus();
                });
                $(".decimal-2-places").numeric({decimalPlaces: 2});
                $(".Decimal3").numeric({decimalPlaces: 3});


            }
        </script>
    </head>
    <body>
        <header>

            <img width="50%" height="80%" src="img/blanc.png" > 
            <a class="en1" href="Login.jsp" > <img src="img/contrasena.png">  Cerrar Sesiòn </a> 
            <a class="en2" href="#"> <img src="img/buscar.png"></a>  <input class="en3" style="text"  >

            <div class="di111" >
                <nav id="menu" align="center" >
                    <ul>
                        <li><a class="item-r" href="PaginaPrincipal.jsp">Home</a></li>
                        <li><a class="item-r" href="#">Promociones</a></li>                        
                        <li><a class="item-r" href="Cotizacion.jsp">Cotizar</a></li>
                        <li><a class="item-r" href="SolicitarServicio.jsp">Solicitar Servicio</a></li>
                        <li><a class="item-r" href="RegistroServicio.jsp">Registro de Servicios</a></li>
                        <li><a class="item-r" href="#">Ordenar</a></li>
                        <li><a class="item-r" href="#">Contactenos</a></li>
                    </ul>
                </nav>
            </div>
        </header>



        <div class="divi13" class="nn">

            <div class="form-group" >
                <label class="div1"> Registro de Servicios</label>  
                <div class="container  well" id="Container" > 
                    <form action="./ControladorRegistro" method="post">


                        <div class="form-group" >
                            <label>Fecha </label> 
                            <input  class="form-control input-sm" class="input4" type="date" id="Roble" name="fecha" >
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje1" class="errores">Selecccionar</div>
                        </div>


                        <div class="form-group" >
                            <label>Código</label></td>
                            <input  class="form-control input-sm" class="SoloPositivo" type="text" size="33%" id="Cod1" name="codigo" maxlength="7">
                            <div id="me" class="errores">Llenar campo</div>
                        </div>



                        <div class="form-group" >
                            <label>Nombre Proveedor</label> 
                            <input class="form-control input-sm" size="33%" type="text" id="CC" name="nombreprov" maxlength="30">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje3" class="errores">Llenar campo</div>
                        </div>


                        <div class="form-group" >
                            <label>NIT Proveedor</label>
                            <input class="form-control input-sm"  class="SoloPositivo" size="33%" type="text" id="D4" name="NITPr" maxlength="10" minlength="2">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje3" class="errores">Llenar campo</div>
                        </div>



                        <div class="form-group" >
                            <label>Nombre Servicio</label>
                            <input class="form-control input-sm" size="33%"  type="text" id="tipo1" name="nombreser" maxlength="30"> 
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje3" class="errores">Llenar campo</div> 
                        </div>


                        <div class="form-group" >
                            <label>Tipo Servicio</label> 
                            <input class="form-control input-sm" size="33%" type="text" id="DD" name="tiposer" maxlength="30">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje4" class="errores">Llenar campo</div>
                        </div>



                        <div class="form-group" >
                            <label>Descripcion Servicio</label>
                            <textarea class="form-control input-sm" class="input45" id="marca1" name="descser" maxlength="500"></textarea>
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje5" class="errores">Llenar campo</div>
                        </div>



                        <div class="form-group" >
                            <label>Precio Servicio($)</label>
                            <input class="form-control input-sm" class="SoloPositivo" size="33%" type="text" id="NitP" name="preciser" maxlength="10">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje6" class="errores">Llenar campo</div>
                        </div>


                        <input class="btn btn-success" class="box" type="submit" id="bEnviar" value="Registrar"/>


                    </form>


                </div>

            </div>

    </body>
</html>

