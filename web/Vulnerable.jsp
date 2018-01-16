<%-- 
    Document   : Vulnerable
    Created on : 16-ene-2018, 16:41:58
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="jquery-3.2.1.min.js"></script>
        <script>
            $(document).ready(function(){
               $("#botonenviar").click(function(){
                //DEBEMOS VALIDAR LA ENTRADA DEL USUARIO
                //DE DATOS                   
                var datos = $("#caja").val();
                //RECORREMOS TODAS LAS LETRAS DE LA CAJA
                var datosbuenos = "";
                for (var i = 0; i < datos.length; i++){
                    //CAPTURAMOS CADA LETRA
                    var letra = datos.charAt(i);
                    if (letra == "<"){
                        letra = "&lt;";
                    }else if (letra == ">"){
                        letra = "&gt;";
                    }
                    datosbuenos += letra;
                }
                //CAMBIAMOS EL CONTENIDO DE LA CAJA
                //NORMALIZADO
                $("#caja").val(datosbuenos);
               });
            }); 
        </script>

    </head>
    <body>
        
        <h1>Página con XSS vulnerable, NORMALIZACION O SANEAMIENTO</h1>
        <form id="form1"
            method="get" action="Vulnerable.jsp">
            <div>
                <label>Introduzca sus datos: </label>
                <input type="text" name="caja"
                       id="caja"
                       style="width:200px;"/>
                <button type="submit" id="botonenviar">
                    Enviar datos
                </button>
            </div>
        </form>
        <hr/>
        <span id="notas"></span>
        <hr/>
        <%
            //RECUPERAMOS EL PARAMETRO DE LA CAJA DE TEXTO
            String datos = request.getParameter("caja");
            //PREGUNTAMOS SI NOS HAN ENVIADO INFORMACION
            //AL PULSAR SOBRE EL BOTON
            if (datos != null){
                //ESCRIBIMOS EN LA PAGINA EL CODIGO QUE NOS
                //HAN PROPORCIONADO
                %>
                <span><%=datos%></span>
                <%
            }
        %>


    </body>
</html>
