<%-- 
    Document   : digita-idade
    Created on : 29/11/2018, 14:13:25
    Author     : hallef.wantek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Digita idade</title>
        <script src="bootstrap/js/jquery-3.3.1.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h3>Digite sua idade e pressione o botão:</h3>
        <hr/>
        <form class="col-md-12" action="mostra-idade.jsp">
            <div class="container col-md-4">
                <div class="jumbotron">
                    <div class="form-control border border-primary">
                        <div class="form-group">
                            <label for="idade" class="form-group">Idade</label>
                            <input class="form-control border border-success" type="text" name="idade" id="idade">
                        </div>
                        <input class="btn btn-link" type="submit" value="Enviar">
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
