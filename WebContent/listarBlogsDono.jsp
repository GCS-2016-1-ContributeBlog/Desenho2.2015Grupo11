<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
		<P>Lista de Blogs</P>
		<table >
			<tr>
				<td>ID</td>
				<td>Titulo</td>
				<td>Categoria</td>
				<td>Data de Criação</td>
			</tr>
			<c:forEach var="blog" items="${listaBlogDono}">
				<tr>
					<td>${blog.idBlog}</td>
					<td>${blog.titulo}</td>
					<td>${blog.categoria}</td>
					<td>${blog.dataCriacao}</td>
					
					<td><a href="ServletPublicacao?acao=InstanciaPublicacao&idBlog=${blog.idBlog}">Criar Publicacação</a></td>
					<td><a href="ServletBlog?acao=Excluir&idBlog=${blog.idBlog}">Excluir</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<a href="index.jsp">Voltar</a>
</body>
</html>