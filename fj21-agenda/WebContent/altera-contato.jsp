<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="js/jquery-ui.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Altera Contatos</title>
</head>
<body>
<% System.out.println("Arquivo altera-contato.jsp"); %>
<c:import url="cabecalho.jsp"></c:import>

<a href="mvc?logica=ListaContatosLogic"><button type="button" fontcolor="blue">Lista de Contatos</button></a>
<br>
<hr />
		<table >
			<form action="alteraContato">	
				<tr>
					<td>id: </td><td><input value="${contato.id}" type="text" name="id" readonly></td>
				</tr>	
				<tr>
					<td>Nome: </td><td><input value="${contato.nome}" type="text" name="nome"></td>
				</tr>
				<tr>
					<td>E-mail:</td><td><input value="${contato.email}" type="text" name="email"></td>
				 </tr>
			 	<tr>
			 		<td>Endereço: </td><td><input value="${contato.endereco}" type="text" name="endereco"></td>
			 	</tr>
				<tr>
					<td>Data de Nascimento: </td><td><tags:campoData id="dataNascimento"><fmt:formatDate value="${contato.dataNascimento.time }" pattern="dd/MM/yyyy"/></tags:campoData></td>
				</tr>
				<tr>
					<td><input type="submit" value="Gravar"></td><td></td>
				</tr>
			</form>
		</table>


<c:import url="rodape.jsp"></c:import>
</body>
</html>