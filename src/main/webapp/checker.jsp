<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<%
String message;
try {
	String aux=session.getAttribute("OtherVerification").toString();
	message = "Welcome!";
} catch (Exception e) {
	message = "Get out!";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%=message %>
</body>
</html>