<%-- 
    Document   : ExpresionesRegulares
    Created on : 16-ene-2018, 17:38:21
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Expresiones regulares</title>
        
        <script src="jquery-3.2.1.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#botoncontenido").click(function(){
                var texto = $("#contenido").val();
                //VISUAL STUDIO
                //QUE CONTENGA LA PALABRA VISUAL
                //var expresion = /visual/;
                //NO CASE SENSITIVE
                //var expresion = /visual/i;
                var expresion = /^visual/i;
                var respuesta = expresion.test(texto);
                $("#resultado").text("visual:" + respuesta);
            });
 
            $("#botonformato").click(function () {
                var texto = $("#formato").val();
                //CODIGO POSTAL
                //var expresion = /^[0-9]{5}$/;
                var expresion = /^(28|33){1}[0-9]{3}$/;
                var respuesta = expresion.test(texto);
                $("#resultado").text(respuesta);
            });
 
            $("#botondni").click(function () {
                //var dni = $("#dni").val();
                
                //var expresion = /^[0-9]{8}-?[A-Z]{1}$/;
                //  12345678?M
 
                //var expresion = /^[0-9]{8}\??[A-Z]{1}$/;
                // Objeto RegExpr
                //var expresion = new RegExp("^[0-9]{8}-?[A-Z]{1}$");
                //var expresion = /^[0-9]{5}$/;
                var valor = $("#dni").val();
                var opcion = $("input[name='formato']:checked").val();
                var pattern = "";
                if (opcion == 0) {
                    //DNI
                    pattern = "^[0-9]{8}-?[A-Z]{1}$";
                } else {
                    //CP
                    pattern = "^[0-9]{5}$";
                }
                //ESTAMOS VALIDANDO UN DNI O UN CODIGO POSTAL
                var expresion = new RegExp(pattern);
                
                var respuesta = expresion.test(valor);
                $("#resultado").text(respuesta);
                
                
                //UUUUUUUUU
            });
        });
    </script>

    </head>
    <body>
        <h1>Validaciones con expresiones regulares</h1>
        
        <form>
        <label>Introduzca un contenido: </label>
        <input type="text" id="contenido"/>
        <br/>
        <button type="button" id="botoncontenido">
            Buscar contenido
        </button>
        <br/>
        <label>Formato: </label>
        <input type="text" id="formato"/>
        <button type="button" id="botonformato">
            Buscar formato
        </button>
        <br />
        <br/>
        <input type="radio" name="formato" value="0"/>DNI
        <input type="radio" name="formato" value="1"/>CP
        <label>DNI: </label>
        <input type="text" id="dni" />
        <button type="button" id="botondni">
            Comprobar formato DNI
        </button>
    </form>
    <h2 id="resultado"></h2>

    </body>
</html>
