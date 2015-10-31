<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table >
	<label>${utilizador.apelido}</label>
			<c:forEach var="comentario" items="${listaComentariosPublicacao}">
				<tr>
					<td><label>Data Comentário:</label>${comentario.dataComentario}</td>
					<td><label>Conteúdo:</label>${comentario.conteudoComentario}</td>
					<td><label>apelidoUtilizador:</label>${comentario.utilizadorComentario}</td>
					<td><c:if test="${utilizador.apelido == comentario.utilizadorComentario}"><a href="ServletComentario?acao=ExcluirComentario&idComentario=${comentario.idComentario}">Excluir Publicacao</a></c:if>
					</td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>