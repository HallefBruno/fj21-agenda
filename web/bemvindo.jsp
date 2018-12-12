<%-- 
    Document   : bem
    Created on : 29/11/2018, 16:12:57
    Author     : hallef.wantek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

    <head>
        <meta charset="UTF-8">
        <title>Adiciona contato</title>
        <script src="bootstrap/js/jquery-3.3.1.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        <link href="jquery/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="jquery/jquery-1.12.4.js" type="text/javascript"></script>
        <script src="jquery/jquery-ui.js" type="text/javascript"></script>
        
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
        
        <script>function focus() {document.getElementById("nome").focus();}</script>
        
    </head>

    <body onload="focus()" class="jumbotron">  
        <h2 style="text-align: center">Adiciona Contatos</h2>
        <hr/>
        <form action="adicionaContato" class="col-md-12" method="POST">
            <div class="container col-md-4">
                <div class="form-control">
                    <div class="form-group col-md-12">
                        <label for="nome" class="form-group ">Nome</label>
                        
                        <input class="form-control" type="text" name="nome" id="nome"/>
                    </div>

                    <div class="form-group col-md-12">
                        <label for="email" class="form-group">Email</label>
                        <input class="form-control" type="email" name="email" id="email"/>
                    </div>

                    <div class="form-group col-md-12">
                        <label for="endereco" class="form-group">Endereço</label>
                        <input class="form-control" type="text" name="endereco" id="endereco"/>
                    </div>

                    <div class="form-group col-md-12">
                        <label for="dataNascimento" class="form-group">Data Nascimento</label>
                        <caelum:campoData id="dataNascimento" />
                    </div>
                    <div class="form-group col-md-12">
                        <input type="submit" value="Gravar" class="btn btn-dark"/>
			<a href="mvc?logica=ListaContatosLogic">
			    <input type="button" value="Listar" class="btn btn-warning"/>
			</a>
                    </div>
                </div>

            </div>
        </form>
    </body>
</html>

