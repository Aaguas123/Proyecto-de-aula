<%-- 
    Document   : SolicitarServicio
    Created on : 10-abr-2019, 19:51:46
    Author     : Aguas
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/EstilosSolicitudServicios.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="jquery.numeric.js"></script>
        <style type="text/css" >
            .errores{
                -webkit-box-shadow: 0 0 10px rgba(0,0,0,0.1);
                -moz-box-shadow: 0 0 8px rgba(0,0,0,0.1);
                -o-box-shadow: 0 0 8px rgba(0,0,0,0.1);
                background: red;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
                color: #fff;
                display: none;
                font-size: 14px;
                margin-top: -30px;
                margin-left: 240px;
                padding: 10px;
                position: absolute;
            }



            .errores2{
                -webkit-box-shadow: 0 0 10px rgba(0,0,0,0.1);
                -moz-box-shadow: 0 0 8px rgba(0,0,0,0.1);
                -o-box-shadow: 0 0 8px rgba(0,0,0,0.1);
                background: red;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
                color: #fff;
                display: none;
                font-size: 14px;
                margin-top: -30px;
                margin-left: 260px;
                padding: 10px;
                width: 20%;
                position: absolute;
            }
        </style>

        <script>

            $(document).ready(function () {
                $("#eniar2").click(function () {
                    var N = $("#EE").val();
                    var N2 = $("#A").val();
                    var N3 = $("#B").val();
                    var N4 = $("#C").val();
                    var N5 = $("#D").val();
                    var N6 = $("#E").val();
                    var N7 = $("#F").val();
                    var N13 = $("#Z").val();
                    var N8 = $("#G").val();
                    var N9 = $("#H").val();
                    var N10 = $("#I").val();
                    var N11 = $("#M").val();
                    var N12 = $("#N").val();

                    if (N == "") {
                        $("#mensaje1").fadeIn();
                        return false;
                    } else {
                        $("#mensaje1").fadeOut();
                        if (N2 == "") {
                            $("#mensaje2").fadeIn();
                            return false;
                        } else {
                            $("#mensaje2").fadeOut();
                            if (N3 == "") {
                                $("#mensaje3").fadeIn();
                                return false;
                            } else {
                                $("#mensaje3").fadeOut();
                                if (N4 == "") {
                                    $("#mensaje4").fadeIn();
                                    return false;
                                } else {
                                    $("#mensaje4").fadeOut();
                                    if (N5 == "") {
                                        $("#mensaje5").fadeIn();
                                        return false;
                                    } else {
                                        $("#mensaje5").fadeOut();
                                        if (N6 == "") {
                                            $("#mensaje6").fadeIn();
                                            return false;
                                        } else {
                                            $("#mensaje6").fadeOut();
                                            if (N7 == "") {
                                                $("#mensaje7").fadeIn();
                                                return false;
                                            } else {
                                                $("#mensaje7").fadeOut();
                                                if (N13 == "") {
                                                    $("#mensaje13").fadeIn();
                                                    return false;
                                                } else {
                                                    $("#mensaje13").fadeOut();
                                                    if (N8 == "") {
                                                        $("#mensaje8").fadeIn();
                                                        return false;
                                                    } else {
                                                        $("#mensaje8").fadeOut();
                                                        if (N9 == "") {
                                                            $("#mensaje9").fadeIn();
                                                            return false;
                                                        } else {
                                                            $("#mensaje9").fadeOut();
                                                            if (N10 == "") {
                                                                $("#mensaje10").fadeIn();
                                                                return false;
                                                            } else {
                                                                $("#mensaje10").fadeOut();
                                                                if (N11 == "") {
                                                                    $("#mensaje11").fadeIn();
                                                                    return false;
                                                                } else {
                                                                    $("#mensaje11").fadeOut();
                                                                    if (N12 == "") {
                                                                        $("#mensaje12").fadeIn();
                                                                        return false;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
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
            }
        </script>

        <link rel="shortcut icon" href="img/favicon-32.png">
        <title>JSP Page</title>
    </head>
    <body>
        <header>

            <img width="50%" height="80%" src="img/blanc.png" > 
            <a class="en1" href="Login.jsp" > <img src="img/contrasena.png">  Cerrar Sesiòn </a> 
            <a class="en2" href="#"> <img src="img/buscar.png"></a>  <input class="en3" style="text"  >

            <div align="center" class="di111" >
                <nav id="menu" align="center" >
                    <ul>
                        <li><a class="item-r" href="PaginaPrincipal.jsp">Home</a></li>
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



        <section class="divi13" >

            <label class="div1"> Solicitar Servicio</label>



            <div class="container well" id="Container" >
                <form name="formulario5" action="./ControladorReServicio" method="post" >


                    <div class="form-group" >
                        <label>Fecha </label> 
                        <input type="date" class="form-control input-sm" class="input4" size="40%" id="EE" name="EE1"> 
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <a href="../src/java/Controlador/SolicitarServicio/ControladorReServicio.java"></a>
                        <div id="mensaje1" class="errores">Selecccionar</div>
                    </div>


                    <div class="form-group" >
                        <label>Codigo</label>
                        <input  class="form-control input-sm" class="SoloPositivo" size="30%" type="text" id="A" name="A1" maxlength="7">
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje2" class="errores">Llenar</div>
                    </div>
                    <div class="form-group" >
                        <label>Nombre Proveedor</label>
                        <input class="form-control input-sm" class="input4" type="text" id="N" name="N1" size="30%"> 
                        <div id="mensaje12" class="errores2">Seleccionar tipo</div>
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>

                    </div>
                   
                    
                   


                    <div class="form-group" >
                        <label>CC/NIT Usuario</label> 
                        <td> <input  class="form-control input-sm"  type="text" size="30%" id="B" name="B1" maxlength="9">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje3" class="errores">Llenar</div>
                    </div>


                    <div class="form-group" >
                        <label>Tipo Dispositivo</label> 
                        <input  size="30%" type="text" class="form-control input-sm"id="C" name="C1"> 
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje4" class="errores">Llenars</div>
                    </div>


                    <div class="form-group" >
                        <label>Marca Dispositivo</label>
                        <input  size="30%" type="text" class="form-control input-sm" id="D" name="D1">
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje5" class="errores">Llenar</div>
                    </div>


                    <div class="form-group" >
                        <label>Código Dispositivo</label>
                        <input  class="form-control input-sm" class="SoloPositivo" size="30%" type="text" id="E" name="E1" maxlength="4"> 
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje6" class="errores">Llenar</div>
                    </div>


                    <div class="form-group" >
                        <label>Modelo Dispositivo</label></td>
                        <input  size="30%" type="text" class="form-control input-sm" id="F" name="F1"> 
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje7" class="errores">Llenar</div>
                    </div>


                    <div class="form-group" >
                        <label>Cantidad Dispisitivos</label></td>
                        <input class="form-control input-sm"  class="SoloPositivo" type="text" size="30%" id="G" name="G1" maxlength="9"> 
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje8" class="errores">Llenar</div>
                    </div>

                    <div class="form-group" >
                        <label>Descripcion Problema</label>
                        <textarea id="H" name="H1" class="form-control input-sm"></textarea>
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje9" class="errores2">Llenar campo</div>
                    </div>


                    <div class="form-group" >
                        <label>Busqueda/Entrega</label>
                        <select id="I" name="I1" class="form-control input-sm">
                            <option value="" selected></option>
                            <option>Recoger en Domicilio</option>
                            <option>Llevar personalmente</option>
                        </select>
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje10" class="errores2">Seleccionar tipo</div>
                    </div>


                    <div class="form-group" >
                        <label>Retorno</label>
                        <select id="M" name="M1"class="form-control input-sm">
                            <option value="" selected></option>
                            <option>Retornar a Domicilio</option>
                            <option>Recoger personalmente</option>
                        </select> 
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje11" class="errores2">Seleccionar tipo</div>
                    </div>
                    
                     <div class="SoloPositivo">
                     <div class="form-group" >
                        <label>NIT Proveedor</label>
                        <input class="form-control input-sm" class="input4" type="text" id="N" name="N2" size="30%"> 
                        <div id="mensaje12" class="errores2">Seleccionar tipo</div>
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>

                    </div>
                    </DIV>


                    <p align="center"> <input type="submit" class="btn btn-success" class="input3"  id="eniar2"  value="Solicitar" >




                </form>
            </div>

        </section>

    </body>
</html>

