<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
try {
	String aux=session.getAttribute("OtherVerification").toString();
} catch (Exception e) {
	response.sendRedirect("cerrarsesion.jsp");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mi Primer Formulario</title>
<style type="text/css">
	.inputgris {
		border: none; 
		background-color: #DFDFDF;
		color: red;
	}
</style>
<script type="text/javascript">
function compruebayenvia() {
	datos=document.miformulario;
	if (datos.nombre.value == '' ||
			datos.apellidos.value == '' ||
			datos.usuario.value == '' ||
			datos.pass1.value == '')
		alert ('¡Tiene que rellenar todos los campos!');
	else
		if (datos.pass1.value!=datos.pass2.value)
			alert ('¡La contraseña no coincide con la repetición!');
		else datos.submit();
}
function compruebanums(campo, evento) {
	var keycode;
	if (window.event) keycode = window.event.keyCode;
	else if (evento) keycode = evento.which;
	else return true;
	if (keycode < 48 || keycode > 57) //Rango ASCII de números
	{
		if (keycode != 8 && keycode != 27 && keycode != 0 ) { //Caracteres especiales permitidos
			alert('Sólo puede introducir números ');
			return false;
		}
		else return true;
	}
	else return true;
}
function compruebaalfan(campo, evento) {
	var keycode;
	if (window.event) keycode = window.event.keyCode;
	else if (evento) keycode = evento.which;
	else return true;
	if (( keycode < 48 || keycode > 57 ) && ( keycode < 64 || keycode > 90 ) && ( keycode < 97 || keycode > 122 )) //Rango ASCII de números y letras
	{
		if (keycode != 8 && keycode != 27 && keycode != 0 ) { //Caracteres especiales permitidos
			alert('Sólo puede introducir letras y números ');
			return false;
		}
		else return true;
	}
	else return true;
}
</script>
</head>
<body style="font-family: sans-serif; font-size: 10pt; background-color: #FAFAFA;">

<h1>Ficha de Datos.</h1>
<form action="Registrado.jsp" method="post" name="miformulario"/>

<table style="text-align: left; border: none;">
<tr><td>
<input type="hidden" name="varoculta" value="secreto"/>
Nombre:
	</td><td><input type="text" name="nombre" onkeypress="return compruebaalfan(this,event);" maxlength="50" value="" class="inputgris"/>
</td></tr><tr><td>Apellidos:
	</td><td><input type="text" name="apellidos" onkeypress="return compruebaalfan(this,event);" maxlength="100" value="" class="inputgris"/>
</td></tr><tr><td>Movil (opcional):
	</td><td><input type="text" name="movil" onkeypress="return compruebanums(this,event);" maxlength="9" value="" class="inputgris"/>
</td></tr><tr><td>Usuario:
	</td><td><input type="text" name="usuario" onkeypress="return compruebaalfan(this,event);" maxlength="10" value="" class="inputgris"/>
</td></tr><tr><td>Contraseña:
	</td><td><input type="password" name="pass1" onkeypress="return compruebaalfan(this,event);" maxlength="8" value="" class="inputgris"/>
</td></tr><tr><td>Repetir Contr.:
	</td><td><input type="password" name="pass2" maxlength="8" value="" class="inputgris"/>
</td></tr><tr><td>
	</td><td style="text-align: right;">
		<input type="button" name="send" value="Enviar" onclick="compruebayenvia();"/>
</td></tr></table>
</form>
<hr/>
<a href="bienvenido.jsp">Volver al Menu Inicial</a>
</body>
</html>