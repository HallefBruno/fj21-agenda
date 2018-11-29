<%-- 
    Document   : erro
    Created on : 29/11/2018, 11:12:19
    Author     : hallef.wantek
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de Erro</title>
        <script src="bootstrap/js/jquery-3.3.1.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="card text-center ">
            <div class="card-header">
                FJ21-Agenda
            </div>
            <div class="card-body alert-danger">
                <h5 class="card-title">Um erro ocorreu!</h5>
                <p class="card-text"><%= exception.getMessage()%></p>
            </div>
            <div class="card-footer text-muted">
                <% 
                    String data = new SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date());
                %>
                <p><%= data%></p>
            </div>
        </div>
    </body>
</html>
