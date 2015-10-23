<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/utilizador.css" rel="stylesheet">
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/utilizador.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet"/>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Publicações do blog</title>
	</head>
	<body background="images/cinza.png" bgproperties="fixed">
    	<div class="row centered-form">
        	<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
            	<div class="panel panel-default">
		
					<c:forEach var="publicacao" items="${listaPublicacaoBlog}">
						
							<div class="panel-heading">
		                            <h3 class="panel-title"><label>${publicacao.tituloPublicacao}</label><br /></h3>
		                    </div>	
							<div class="form-group">
								${publicacao.conteudoPublicacao}
							</div>
							<div class="form-group">
								<label>Categoria:</label> ${publicacao.categoriaPublicacao}<br/>
							</div>
							<div class="form-group">
								<a href="ServletPublicacao?acao=AvaliarPublicacao&idPublicacao=${publicacao.idPublicacao}&notaPublicacao=1">Gostei</a>
								<a href="ServletPublicacao?acao=AvaliarPublicacao&idPublicacao=${publicacao.idPublicacao}&notaPublicacao=-1">Nao gostei</a>
								<label>Nota: </label> ${publicacao.nota}
							</div>
		
					</c:forEach>
				</div>
			</div>
		</div>
	</body>
</html>