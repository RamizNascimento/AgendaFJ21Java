
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="js/jquery-ui.css" />
		<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui.js"></script>
		<meta charset="ISO-8859-1">
		<title>Cadastro de Contatos</title>
	</head>
	<body>
		<% System.out.println("Arquivo adiciona-contato.jsp"); %>
		<c:import url="cabecalho.jsp"></c:import>
		<a href="mvc?logica=ListaContatosLogic"><button type="button" fontcolor="blue">Lista de Contatos</button></a>
		<br>
		<hr>
		<h1>Cadastro de Contatos</h1>
		<hr />
		<table>
			<form action="adicionaContato">		
				<tr>
					<td>Nome: </td><td><input type="text" name="nome"></td>
				</tr>
				<tr>
					<td>E-mail:</td><td><input type="text" name="email"></td>
				 </tr>
			 	<tr>
			 		<td>Endereço: </td><td><input type="text" name="endereco"></td>
			 	</tr>
				<tr>
					<td>Data de Nascimento: </td><td><tags:campoData id="dataNascimento"></tags:campoData></td>
				</tr>
				<tr>
					<td><input type="submit" value="Gravar"></td><td></td>
				</tr>
			</form>
		</table>
	<c:import url="rodape.jsp"></c:import>
	</body>
</html>