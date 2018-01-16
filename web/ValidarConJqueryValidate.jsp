<%-- 
    Document   : ValidarConJqueryValidate
    Created on : 16-ene-2018, 18:19:50
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jquery validate, doc 25</title>
        
        <script src="jquery-3.2.1.min.js"></script>
        <script src="jquery.validate.min.js"></script>
<script>

    	$(document).ready(function() {
            $("#formulario").validate({
rules: {
nombre: "required",
apellidos: "required",
usuario: {
required: true,
minlength: 2
},
password: {
required: true,
minlength: 5
},
confirm_password: {
required: true,
minlength: 5,
equalTo: "#password"
				},
email: {
required: true,
email: true
},
aceptar: "required"
},
messages: {
nombre: "Por favor, introduzca su nombre",
apellidos: "Introduzca sus apellidos",
usuario: {
required: "Usuario obligatorio",
minlength: "Debes escribir dos letras como mínimo"
},
password: {
required: "Password obligatorio",
minlength: "El password debe ser como mínimo de 5 letras"
},
confirm_password: {
required: "Es obligatorio repetir password",
minlength: "El password debe ser como mínimo de 5 letras",
equalTo: "Introduzca el mismo password"
},
email: "Dirección de email obligatoria",
aceptar: "Debe aceptar las normas",
}
});
    });
</script>
<style>
    	#formulario label.error {
margin-left: 10px;
width: auto;
display: inline;
                color:red;
}
</style>

    </head>
    <body>
        
        <h1>Validaciones con JQuery</h1>
        <form id="formulario" method="get" action="ValidacionJQuery.jsp">
<fieldset>
<legend>Validación de un formulario</legend>
<p>
<label for="nombre">Nombre: </label>
<input id="nombre" name="nombre" type="text">
</p>
<p>
<label for="apellidos">Apellidos: </label>
<input id="apellidos" name="apellidos" type="text">
</p>
<p>
<label for="usuario">Usuario: </label>
<input id="usuario" name="usuario" type="text">
			</p>
<p>
<label for="password">Password: </label>
<input id="password" name="password" type="password">
</p>
<p>
<label for="confirm_password">Repetir password</label>
<input id="confirm_password" name="confirm_password" type="password">
</p>
<p>
<label for="email">Email</label>
<input id="email" name="email" type="email">
</p>
<p>
<label for="aceptar">Aceptar políticas de privacidad</label>
<input type="checkbox" class="checkbox" id="aceptar" name="aceptar">
</p>
<p>
<input class="submit" type="submit" value="Enviar datos">
</p>
</fieldset>
</form>

    </body>
</html>
