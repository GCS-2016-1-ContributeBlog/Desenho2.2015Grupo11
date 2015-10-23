<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Publicações do blog</title>
</head>
<body>
	<div align="center">
		<table >
			<tr>
				<td>Titulo</td>
				<td>Categoria</td>
				<td>Conteudo Publicacao</td>
			</tr>
			<c:forEach var="publicacao" items="${listaPublicacaoBlog}">
				<tr>
					<td>${publicacao.tituloPublicacao}</td>
					<td>${publicacao.categoriaPublicacao}</td>
					<td>${publicacao.conteudoPublicacao}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<a href="index.jsp">Voltar</a>
</body>
</html>