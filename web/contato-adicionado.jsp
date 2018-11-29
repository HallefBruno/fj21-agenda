<%-- 
    Document   : contato-adicionado
    Created on : 29/11/2018, 17:31:12
    Author     : hallef.wantek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contato adicionado</title>
        <script src="bootstrap/js/jquery-3.3.1.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="card text-center">
            <div class="card-header">
                FJ21-Agenda
            </div>
            <div class="card-body alert-info">
                <h5 class="card-title">Contado ${param.nome} adicionado com sucesso! </h5>
            </div>
            <div class="card-footer text-muted">
                <h3 class="card-title">:)</h3>
            </div>
        </div>
    </body>
</html>
