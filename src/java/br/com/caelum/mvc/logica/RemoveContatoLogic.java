package br.com.caelum.mvc.logica;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;
import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RemoveContatoLogic implements Logica {

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
        long id = Long.parseLong(req.getParameter("id"));
        Connection connection = (Connection) req.getAttribute("conexao");
        Contato contato = new Contato();
        contato.setId(id);
        ContatoDao dao = new ContatoDao(connection);
        dao.remove(contato);
        return "mvc?logica=ListaContatosLogic";
    }

}
