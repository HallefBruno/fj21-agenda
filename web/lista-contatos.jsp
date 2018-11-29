<%-- 
    Document   : lista-contatos
    Created on : 29/11/2018, 15:16:37
    Author     : hallef.wantek
--%>

<%@page import="br.com.caelum.jdbc.modelo.Contato"%>
<%@page import="br.com.caelum.jdbc.dao.ContatoDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista contatos com jstl</title>
        <script src="bootstrap/js/jquery-3.3.1.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <style>
            #customers {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #customers tr:nth-child(even){background-color: #f2f2f2;}

            #customers tr:hover {background-color: #ddd;}

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
        </style>
    </head>
    <body>
        <form class="form-control">
            <!-- cria o DAO -->
            <jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDao"/>
            <table id="customers">
                <tr>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Endereço</th>
                    <th>Data nascimento</th>
                </tr>
                <!-- percorre contatos montando as linhas da tabela	-->
                <% int contador = 0; %>
                <c:forEach var="contato" items="${dao.lista}" varStatus="row">
                    <tr>
                        <td>${contato.nome}</td>

                        <td>
                            <c:if test="${not empty contato.email}">
                                <a href="mailto:${contato.email}">${contato.email}</a>
                            </c:if>
                            <c:if test="${empty	contato.email}">
                                E-mail não informado
                            </c:if>
                        </td>

                        <td>${contato.endereco}</td>
                        <%
                            String dataForm = new SimpleDateFormat("dd/MM/yyyy").format(dao.getLista().get(contador).getDataNascimento().getTime());
                            contador++;
                        %>
                        
                        <%--<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/> --%>
                        
                        <td><%= dataForm%></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
        <div align="center">contador = <%= contador%></div>
    </body>
</html>
