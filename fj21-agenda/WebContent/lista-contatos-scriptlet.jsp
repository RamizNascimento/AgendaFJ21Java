<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    	pageEncoding="ISO-8859-1"
    %>
<%@ page import="java.util.*,
			 br.com.caelum.jdbc.dao.*, 
			 br.com.caelum.jdbc.modelo.*,    
			java.text.ParseException, 
			java.text.SimpleDateFormat, 
			java.util.Calendar, 
			java.util.Date"
    	 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
	thead {color:green;}
	table, th, td {border: 1px solid black;}
</style>
<title>Lista de Contatos</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<td>Nome</td>
				<td>E-mail</td>
				<td>Endereço</td>
				<td>Data de Nascimento</td>
			</tr>
		</thead>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			int i = 0;
					
			for(Contato contato : contatos){
		%>
		<tr>
			<td><%=contato.getNome() %></td>
			<td><%=contato.getEmail() %></td>
			<td><%=contato.getEndereco() %></td>
			<td><%
					Date date = new Date(contato.getDataNascimento().getTimeInMillis());
					SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
					out.print(sdf.format(date));
				%>
			</td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>