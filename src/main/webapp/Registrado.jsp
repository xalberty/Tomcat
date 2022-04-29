<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
try {
	String aux=session.getAttribute("usuario").toString();
} catch (Exception e) {
	response.sendRedirect("cerrarsesion.jsp");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% 
//aquí pongo todo el código java que quiera que mi servidor ejecute.
String mivariablejava=request.getParameter("nombre");
String apellidos=request.getParameter("apellidos");
String movil=request.getParameter("movil");
if (movil==null || movil.equals("")) movil="<b>No nos ha indicado ningun movil</b>";
String usuario=request.getParameter("usuario");
%><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bienvenido</title>
</head>
<body>
<h1>Bienvenido <%=mivariablejava %></h1>
<% for(int i=0; i<3; i++) { %>
Sus datos han sido registrados, y son los siguientes:
<br/>Nombre: <%=mivariablejava %>
<br/>Apellidos: <%=apellidos %>
<br/>Movil: <%=movil %>
<br/>Usuario: <%=usuario %>
<br/>La contraseña se omite por seguridad.
<hr/>
<a href="bienvenido.jsp">Volver al Menu Inicial</a>
<% } %>
</body>
</html>