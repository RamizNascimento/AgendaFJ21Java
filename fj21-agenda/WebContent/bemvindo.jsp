<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bem vindo JSP </title>
</head>
<body>
	<%-- comentário em JSP aqui: nossa primeira página JSP --%>
	
	<%
		String mensagem = "Berm vindo  ao Sistema de Agenda do FJ21!";
	%>
	
	<%
		out.println(mensagem);
	%>
	
	<br>
	
	<%
		String desenvolvido = "Desenvolvido por Ramiz Nascimento";
	%>
	
	<%= desenvolvido %>
	
	<br>
	<%
		System.out.println("Tudo foi executado");
	%>
	
</body>
</html>