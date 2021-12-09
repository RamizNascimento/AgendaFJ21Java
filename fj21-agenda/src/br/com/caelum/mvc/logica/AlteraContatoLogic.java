package br.com.caelum.mvc.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class AlteraContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("Classe AlteraContatoLogic");
		long id = Long.parseLong(req.getParameter("id"));
		Contato contato = new ContatoDao().getContato(id);
		
		req.setAttribute("contato", contato);
		
		return "altera-contato.jsp";
		
	}

}
