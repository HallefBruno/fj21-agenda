package br.com.caelum.mvc.logica;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListaContatosLogic implements Logica {

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
        List<Contato> contatos = new ContatoDao().getLista();
        req.setAttribute("contatos", contatos);
        return "/WEB-INF/jsp/lista-contatos.jsp";
    }

}