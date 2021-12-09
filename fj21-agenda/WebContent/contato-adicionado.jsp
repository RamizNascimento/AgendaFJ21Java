<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:import url="cabecalho.jsp"></c:import>
	<h1>Contato ${param.nome } adicionado com sucesso!</h1>
	<table>
		<tr>
			<td><a href="mvc?logica=ListaContatosLogic"><button type="button" color="blue">Lista de Contatos</button></a></td>
			<td><a href="mvc?logica=AdicionaContatoLogic"><button type="button" color="blue">Adicionar Contato</button></a></td>
		</tr>
	</table>
	 
	<% System.out.println("Arquivo contato-adicionado.jsp"); %>
	<h1>Contato ${param.nome } adicionado com sucesso!</h1>
	<c:import url="rodape.jsp"></c:import>
</body>
</html>