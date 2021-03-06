package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

@WebServlet("/adicionaContato")
public class AdicionaContatoServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		System.out.println("Classe AdicionaContatoServlet");
		// Busca o writer
		PrintWriter out = response.getWriter();
		
		// Buscando os parametros no request
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String endereco = request.getParameter("endereco");
		String dataEmTexto = request.getParameter("dataNascimento");
		
		
		Calendar dataNascimento = null;
		
		// Fazendo a convers?o da Data
		try {
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
				
			dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(date);
		
		}catch(ParseException e) {
			out.println("Erro de convers?o de data");
			return;//para execu??o do metodo
		}
		
		// Monta um objeto contato
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEndereco(endereco);
		contato.setDataNascimento(dataNascimento);
		contato.setEmail(email);
		
		
		// Salva Contato
		ContatoDao dao;
		try {
			dao = new ContatoDao();
			dao.adiciona(contato);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/contato-adicionado.jsp");
		rd.forward(request, response);
		
		
		
	}
}

