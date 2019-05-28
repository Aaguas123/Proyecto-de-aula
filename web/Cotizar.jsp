
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/EstilosCotizaciones.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="jquery-3.3.1.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="jquery.numeric.js"></script>
        <link rel="shortcut icon" href="img/favicon-32.png">
        <title>JSP Page</title>
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
                margin-top: -61.8px;
                margin-left: 570px;
                border-radius: 15px;
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
                margin-left: 270px;
                width: 20%;
                padding: 10px;
                position: absolute;
            }
        </style>

        <script>
            $(document).ready(function () {
                $("#bEnviar").click(function () {
                    var P1 = $("#fecha1").val();
                    var P2 = $("#Cod1").val();
                    var P3 = $("#CCN").val();
                    var P4 = $("#tipo1").val();
                    var P5 = $("#marca1").val();
                    var P6 = $("#modl1").val();
                    var P7 = $("#u").val();
                    var P8 = $("#descp1").val();
                    var P9 = $("#tipo");
                    var P10 = $("#nompv").val();
                    var P11 = $("#CS").val();


                    if (P1 == "") {
                        $("#mensaje1").fadeIn();
                        return false;
                    } else {
                        $("#mensaje1").fadeOut();
                        if (P2 == "") {
                            $("#mensaje2").fadeIn();
                            return false;
                        } else {
                            $("#mensaje2").fadeOut();
                            if (P3 == "") {
                                $("#mensaje3").fadeIn();
                                return false;
                            } else {
                                $("#mensaje3").fadeOut();
                                if (P4 == "") {
                                    $("#mensaje4").fadeIn();
                                    return false;
                                } else {
                                    $("#mensaje4").fadeOut();
                                    if (P5 == "") {
                                        $("#mensaje5").fadeIn();
                                        return false;
                                    } else {
                                        $("#mensaje5").fadeOut();
                                        if (P6 == "") {
                                            $("#mensaje6").fadeIn();
                                            return false;
                                        } else {
                                            $("#mensaje6").fadeOut();
                                            if (P7 == "") {
                                                $("#mensaje7").fadeIn();
                                                return false;
                                            } else {
                                                $("#mensaje7").fadeOut();
                                                if (P8 == "") {
                                                    $("#mensaje8").fadeIn();
                                                    return false;
                                                } else {
                                                    $("#mensaje8").fadeOut();
                                                    if (P9.val() == "") {
                                                        $("#mensaje9").fadeIn();
                                                        return false;
                                                    } else {
                                                        $("#mensaje9").fadeOut();
                                                        if (P10 == "") {
                                                            $("#mensaje10").fadeIn();
                                                            return false;
                                                        } else {
                                                            $("#mensaje10").fadeOut();
                                                            if (P11 == "") {
                                                                $("#mensaje11").fadeIn();
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



        <div id="divi13" >

            <label class="div1"> Cotizacion</label>
           
            <div class="container  well" id="Container" > 
                <form action="./cotizacionesRegistrar" method="post" >

                    <div class="form-group" >
                        <label class="labels">Fecha </label> 
                        <input class="form-control input-sm" class="input4" type="date" id="fecha1" name="Fecha">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje1" class="errores">Selecccionar</div>
                    </div> 

                    <div class="SoloPositivo">
                        <div class="form-group" >
                            <label class="labels">Codigo</label>
                            <input class="form-control input-sm" class="SoloPositivo" type="text" size="33%" id="Cod1" name="Codigo" maxlength="11">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje2" class="errores">Llenar campo</div>
                        </div>
                    </div>


                    
                        <div class="form-group" >
                            <div class="SoloPositivo">
                            <label class="labels">CC/NIT Usuario</label> 
                            <input class="form-control input-sm" class="SoloPositivo" size="33%" type="text" id="CCN" name="Id" maxlength="10"> 
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje3" class="errores">Llenar campo</div>
                        </div> 
                    </div>


                    <div class="form-group" >
                        <label class="labels">Tipo Dispositivo</label> 
                        <input class="form-control input-sm" class="input4" type="text" id="tipo1" name="Tipo1" maxlength="20">
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje4" class="errores">Llenar campo</div>
                    </div>

                    <div class="form-group" >
                        <label class="labels">Marca Dispositivo</label>
                        <input class="form-control input-sm" class="input4" type="text" id="marca1" name="Marca2" maxlength="15"> 
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje5" class="errores">Llenar campo</div>
                    </div>


                    <div class="form-group" >
                        <label class="labels">Modelo Dispositivo</label>
                        <input class="form-control input-sm" size="33%"  type="text" id="modl1" name="Modelo" maxlength="30"> 
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje6" class="errores">Llenar campo</div>
                    </div>

                    
                        <div class="form-group" >
                            <div class="SoloPositivo">
                            <label class="labels">Cantidad Dispisitivos</label>
                            <input class="form-control input-sm" class="SoloPositivo" size="33%" type="text" id="u" name="Cantidad" maxlength="7"> 
                                <p class="help-block" id="Requerido">Campo Obligatorio</p>
                                <div id="mensaje7" class="errores">Llenar campo</div>
                        </div> 
                    </div>


                    <div class="form-group" >
                        <label class="labels">Descripcion Problema</label>
                         <textarea class="form-control" id="descp1" name="Descripcion" maxlength="500" ></textarea> 
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje8" class="errores">Llenar campo</div>
                    </div>


                    <div class="form-group" >
                        <label class="labels">Cotizar A</label>
                        <select class="form-control input-sm" id="tipo" name="tipo2">
                            <option value="" selected></option>
                            <option>Todos los Proveedores</option>
                            <option>Proveedor Especifico</option>
                        </select>
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje9" class="errores">Llenar campo</div>
                    </div>

                    <div class="form-group" >
                        <label class="labels">Nombre Proveedor</label>
                        <input class="form-control input-sm" size="33%" type="text" id="nompv" name="Proveedor" maxlength="30"> 
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje10" class="errores">Llenar campo</div>
                    </div>


                    
                        <div class="form-group" >
                            <div class="SoloPositivo">
                            <label class="labels">Código servicio</label>
                            <input class="form-control input-sm" class="SoloPositivo" size="33%" type="text" id="CS" name="CodigoS" maxlength="11">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje11" class="errores">Llenar campo</div>
                        </div> 
                    </div>

                    
                        <p align="center"> <input  class="btn btn-success" class="input3" type="submit" id="bEnviar" value="Cotizar" > </p>
                   


                </form>


            </div>
            </div>

    </body>
</html>

