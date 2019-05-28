<%-- 
Document   : RegistroProveedor
Created on : 08-abr-2019, 9:42:25
Author     : Aguas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/EstilosRProveedores.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="img/favicon-32.png">
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
                margin-top: -61px;
                margin-left: -130px;
                border-radius: 15px;
                padding: 10px;
                position: absolute;
            }
        </style>


        <script>
            var expr = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
            $(document).ready(function () {
                $("#bEnviar").click(function () {
                    var sel = $("#tipo");
                    var nombre = $("#nombres1").val();
                    var id = $("#identificacion1").val();
                    var correo = $("#correo").val();
                    var tel = $("#telefono1").val();
                    var Dir = $("#direccion1").val();
                    var Contra = $("#pass1").val();
                    var Contra2 = $("#pass11").val();

                    if (sel.val() == "") {
                        $("#mensaje1").fadeIn();
                        return false;
                    } else {
                        $("#mensaje1").fadeOut();
                        if (nombre == "") {
                            $("#mensaje2").fadeIn();
                            return false;
                        } else {
                            $("#mensaje2").fadeOut();
                            if (id == "") {
                                $("#mensaje3").fadeIn();
                                return false;
                            } else {
                                $("#mensaje3").fadeOut();
                                if (correo == "" || !expr.test(correo)) {
                                    $("#mensaje4").fadeIn();
                                    return false;
                                } else {
                                    $("#mensaje4").fadeOut();
                                    if (tel == "") {
                                        $("#mensaje5").fadeIn();
                                        return false;
                                    } else {
                                        $("#mensaje5").fadeOut();
                                        if (Dir == "") {
                                            $("#mensaje6").fadeIn();
                                            return false;
                                        } else {
                                            $("#mensaje6").fadeOut();
                                            if (Contra == "") {
                                                $("#mensaje7").fadeIn();
                                                return false;
                                            } else {
                                                $("#mensaje7").fadeOut();
                                                if (Contra2 == "") {
                                                    $("#mensaje8").fadeIn();
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
                $('#pass11').keyup(function () {
                    var c1 = $("#pass1").val();
                    var c2 = $("#pass11").val();

                    if (c1 == c2) {
                        $("#error2").text("Correcto!").css("color", "white");
                    } else {
                        $("#error2").text("No Coinciden!").css("color", "red");
                    }
                    if (c2 == "") {
                        $("#error2").text("NO se puede dejar en blanco!").css("color", "red");
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
        <title>nTèc</title>
    </head>
    <body>
        <header>
            <img width="700" height="250" src="img/blanc.png" > 

            <a class="agus" href="InicioSesion.jsp"><img src="img/contrasena.png">  Login </a>
            <a class="a1" href="RegistroUsuarios.jsp"> <img src="img/reg.png"> Registro Usuario</a>

        </header>
        <section class="fot1">
            <label class="div1"> Registrate </label> 
            <div class="container  well" id="Container" > 
                <form name="formulario1" action="./ControladorRegistrar" method="post">


                    <div class="form-group" >
                        <label >Tipo</label>
                        <select id="tipo" class="form-control" name="tipo">
                            <option value="" selected> Selecione Una Opciòn</option>
                            <option value="Empresa">Empresa</option>
                        </select>
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje1" class="errores">Selecccione tipo</div>
                    </div>


                    <div class="form-group" >
                        <label>Razòn Social</label>  
                        <input size="33%" class="form-control" type="text" maxlength="20"
                               id="nombres1" name="razon"> 
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje2" class="errores">Llenar campo</div>
                    </div>

                    <div class="form-group" >
                        <label>NIT</label> 
                        <div class="SoloPositivo">
                            <input class="form-control"   size="30%" type="text" id="identificacion1" name="NIT" minlength="8" maxlength="10">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje3" class="errores">Llenar Campo</div>
                        </div>

                    </div>


                    <div class="form-group" >
                        <label> Email</label> 
                        <input class="form-control" class="input2"  type="text" maxlength="40" id="correo" name="email1" required="">
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje4" class="errores">Llenar campo</div>
                    </div>


                    <div class="form-group" >
                        <label> Email II</label> 
                        <input class="form-control" class="input2" type="text" maxlength="40" id="corre" name="email2">

                    </div>
                    <div class="form-group" >
                        <label ></label> 
                    </div>


                    <div class="form-group" >   
                        <div class="SoloPositivo">
                            <label> Telefono </label> 
                            <input type="text" class="form-control" maxlength="10" id="telefono1" name="tel1">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje5" class="errores">Llenar campo</div>      
                        </div>

                    </div>


                    <div class="form-group" >
                        <div class="SoloPositivo">
                            <label> Telefono II </label>  
                            <input type="text" class="form-control" class="SoloPositivo"  maxlength="10" id="telefono" name="tel2">
                            <p class="help-block" id="Requerido">&nbsp; &nbsp;</p>                   
                        </div>

                    </div>


                    <div class="form-group" >
                        <label> Direcciòn </label> 

                        <input type="text" value="" class="form-control"
                               id="direccion1" name="dire">
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje6" class="errores">Llenar campo</div>
                    </div>


                    <div class="form-group" >
                        <label> Contraseña </label> 

                        <input type="password" class="form-control" value="" minlength="5" maxlength="20"
                               id="pass1">
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <div id="mensaje7" class="errores">Llenar campo</div>
                        <div id="error"></div>
                    </div>


                    <div class="form-group" >
                        <label> Confirme Contraseña </label> 

                        <input type="password" class="form-control" value=""  minlength="5" maxlength="20"
                               id="pass11" name="pass">
                        <p class="help-block" id="Requerido">Campo Obligatorio</p>
                        <p id="mensaje8" class="errores">Llenar campo</p>
                        <span id="error2"></span>
                    </div>

                    <div class="form-group" >
                        <label> </label> 
                    </div>



                    <div class="form-group" >
                        <div class="div2" >
                            <input  class="btn btn-success"  type="submit" id="bEnviar" value="Registrar">
                        </div>
                    </div>

                </form> 
            </div>
        </section>
    </body>
</html>

