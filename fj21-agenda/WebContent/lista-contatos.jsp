<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table { 
    display: table;
    border-collapse: separate;
    border-spacing: 20px;
    border-color: gray;
    border: 5px solid black;
}

th, td {
    border: 1px solid black;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de contatos JSP</title>
</head>
<body>
	<% System.out.println("Arquivo lista-contatos.jsp"); %>
	<c:import url="cabecalho.jsp"></c:import>
	<a href="adiciona-contato.jsp"><button type="button" color="blue">Adicionar Contato</button></a>
	<br>
	<hr>
	
	<!-- Cria o Dao -->
	<!-- <jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDao"> -->
	
		<table>
			<!-- Percorrendo a lista de contatos montando a tabela -->
				<thead align="center" valign="middle">
					<tr style="color:green;">
						<td>NOME</td>
						<td>E-MAIL</td>
						<td>ENDEREÇO</td>
						<td>DATA DE NASCIMENTO</td>
						<td>REMOÇÃO</td>
						<td>ALTERAÇÃO</td>
					</tr>
				</thead>
			<c:forEach var="contato" items="${contatos}" varStatus="id">
				<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff'}">
					<td>${contato.nome}</td>
					<td>
						<c:if test="${not empty contato.email }">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:if>
						<c:if test="${empty contato.email }">
							 E-mail não informado!!!
						</c:if>
					</td>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate value="${contato.dataNascimento.time }" pattern="dd/MM/yyyy"/></td>
					<td>
						<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
					</td>
					<td>
						<a href="mvc?logica=AlteraContatoLogic&id=${contato.id}">Alterar</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	
		<!-- </jsp:useBean> -->	
	
	<c:import url="rodape.jsp"></c:import>
</body>
</html>