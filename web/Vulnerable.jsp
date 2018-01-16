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
    </head>
    <body>
        
        <h1>Página con XSS vulnerable</h1>
        <form method="get" action="Vulnerable.jsp">
            <div>
                <label>Introduzca sus datos: </label>
                <input type="email" name="caja"/>
                <button type="submit">
                    Enviar datos
                </button>
            </div>
        </form>
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
