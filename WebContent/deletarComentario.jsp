<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gerenciar Comentários</title>
</head>
<body>

                
                	<div align="center">
		<P>Comentários</P>
		<table >
			<tr>
				<td>Conteúdo</td>
		
			</tr>
			<c:forEach var="comentarios" items="${comentarios}">
				<tr>
					 <td>${comentarios.conteudoComentario}</td>
									
					<td><a href="ServletComentario?acao=ExcluirComentario&idComentario=${comentarios.idComentario}">Excluir Comentário</a></br>
				</tr>
			</c:forEach>
		</table>
	</div>
                
</body>
</html> 
