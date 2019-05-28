<%-- 
    Document   : Registro
    Created on : 01-abr-2019, 20:44:55
    Author     : Aguas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/EstilosRUsuarios.css" rel="stylesheet" type="text/css"/>
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
                font-size: 16px;
                margin-top: -63.9px;
                margin-left: -130px;
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
                font-size: 16px;
                margin-top: -40px;
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
                    var apellido = $("#apellidos1").val();
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
                            if (apellido == "") {
                                $("#mensaje3").fadeIn();
                                return false;
                            } else {
                                $("#mensaje3").fadeOut();
                                if (id == "") {
                                    $("#mensaje4").fadeIn();
                                    return false;
                                } else {
                                    $("#mensaje4").fadeOut();
                                    if (correo == "" || !expr.test(correo)) {
                                        $("#mensaje5").fadeIn();
                                        return false;
                                    } else {
                                        $("#mensaje5").fadeOut();
                                        if (tel == "") {
                                            $("#mensaje6").fadeIn();
                                            return false;
                                        } else {
                                            $("#mensaje6").fadeOut();
                                            if (Dir == "") {
                                                $("#mensaje7").fadeIn();
                                                return false;
                                            } else {
                                                $("#mensaje7").fadeOut();
                                                if (Contra == "") {
                                                    $("#mensaje8").fadeIn();
                                                    return false;
                                                } else {
                                                    $("#mensaje8").fadeOut();
                                                    if (Contra2 == "") {
                                                        $("#mensaje9").fadeIn();
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

                });

                $('#pass11').keyup(function () {
                    var c1 = $("#pass1").val();
                    var c2 = $("#pass11").val();

                    if (c1 == c2) {
                        $("#error2").text("Coinciden!").css("color", "green");
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

        <title>  nTèc</title>
    </head>
    <body>
        <header >
            <img width="700" height="250" src="img/blanc.png" > 

            <a class="a1" href="RegistroProveedores.jsp"><img src="img/reg.png"> Registro Proveedor</a>
            <a class="agus" href="InicioSesion.jsp"><img src="img/contrasena.png">  Login </a>



        </header>
        <section class="fot1">
            <label class="div1"> Registrate </label> 

            <div class="container  well" id="Container" >

                <form name="formulario1" action="./ControladorRegistroU" method="post">
                    <table>

                        <div class="form-group" >
                            <label >Tipo</label>
                            <select name="tipo1" id="tipo" class="form-control" >
                                <option value="" selected> Selecione Una Opciòn</option>
                                <option value="Persona">Persona Natural</option>
                                <option value="Empresa">Empresa</option>
                            </select>
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje1" class="errores">Llenar campo</div>
                        </div>


                        <div class="form-group" >
                            <label>Nombres</label>  
                            <input type="text" name="nombre" size="33%" class="form-control"  maxlength="20"
                                   id="nombres1" > 
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje2" class="errores">Llenar campo</div>
                        </div>

                        <div class="form-group" >
                            <label> Apellidos</label> 

                            <input type="text" name="apellidos" class="form-control" class="input2"  maxlength="40"
                                   id="apellidos1" >
                            <div id="mensaje3" class="errores2">Llenar campo</div>
                        </div>
                        <div class="form-group" >
                            <label ></label> 
                        </div>

                        <div class="form-group" >
                            <label>CC/NIT</label> 

                            <input type="text" name="cc_nit" class="form-control" class="SoloPositivo"  size="30%" 
                                   id="identificacion1"  maxlength="10">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje4" class="errores">Llenar campo</div>
                        </div>


                        <div class="form-group" >
                            <label> Email</label> 
                            <input type="text" name="email" class="form-control" class="input2"   maxlength="50"
                                   id="correo" >
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje5" class="errores">Llenar campo</div>
                        </div>


                        <div class="form-group" >
                            <label> Telefono </label> 

                            <input type="text" class="form-control" class="SoloPositivo" maxlength="10"
                                   id="telefono1" name="tel">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje6" class="errores">Llenar campo</div>
                        </div>


                        <div class="form-group" >
                            <label> Telefono II </label>  

                            <input type="text" name="tel1" class="form-control" class="SoloPositivo"  maxlength="10"
                                   >
                            <p class="help-block" id="Requerido">&nbsp; &nbsp;</p>

                        </div>


                        <div class="form-group" >
                            <label> Direcciòn </label> 

                            <input type="text" name="dir" value="" class="form-control"
                                   id="direccion1" maxlength="50">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje7" class="errores">Llenar campo</div>
                        </div>


                        <div class="form-group" >
                            <label> Contraseña </label> 

                            <input type="password" class="form-control" value="" maxlength="20"
                                   id="pass1">
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <div id="mensaje8" class="errores">Llenar campo</div>
                            <div id="error"></div>
                        </div>


                        <div class="form-group" >
                            <label> Confirme Contraseña </label> 

                            <input type="password" name="cont" class="form-control" value="" maxlength="20"
                                   id="pass11" >
                            <p class="help-block" id="Requerido">Campo Obligatorio</p>
                            <p id="mensaje9" class="errores">Llenar campo</p>

                            <span id="error2"></span>
                        </div>




                        <div class="form-group" >
                            <div class="div2" >
                                <input  class="btn btn-success"  type="submit" id="bEnviar" value="Registrar">
                            </div>
                        </div>
                    </table>

                </form> 

            </div>


        </section>

    </body>
</html>
