<%-- 
    Document   : mostra-idade
    Created on : 29/11/2018, 14:43:39
    Author     : hallef.wantek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostra idade</title>
        <script src="bootstrap/js/jquery-3.3.1.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <body>
        <form class="col-md-12">
            <div class="container col-md-4">
                <div class="jumbotron">
                    <p style="text-align: center;"><s>Idade: </s>${param.idade}</p>
                </div>
            </div>
        </form>      
    </body>
    
</html>
