<%-- 
    Document   : lista-contatos-scriptlet
    Created on : 29/11/2018, 11:46:11
    Author     : hallef.wantek
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.com.caelum.jdbc.modelo.Contato"%>
<%@page import="java.util.List"%>
<%@page import="br.com.caelum.jdbc.dao.ContatoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listando contatos</title>
        <script src="bootstrap/js/jquery-3.3.1.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <table>
            <%
                ContatoDao dao = new ContatoDao();
                List<Contato> contatos = dao.getLista();
                for (Contato contato : contatos) {
            %>
                    <tr>
                        <td><%=contato.getNome()%></td>	
                        <td><%=contato.getEmail()%></td>
                        <td><%=contato.getEndereco()%></td>
                        <td><%=new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime())%></td>
                    </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
