<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<form method="post" action="ServletPublicacao?acao=EditarPublicacao">
		<fieldset>
				<legend>Editar Publicacao</legend>
				<input type="hidden" name="idPublicacao" autofocus="autofocus" placeholder="id" value="${publicacao.idPublicacao}">
				<label>Título:</label><input
						type="text" name="tituloPublicacao" placeholder="Titulo Publicação"  value="${publicacao.tituloPublicacao}"/><br />
						<label>Categoria:</label><input
						type="text" name="categoriaPublicacao"  placeholder="Categoria"  value="${publicacao.categoriaPublicacao}"/><br />
						<label>Conteúdo:</label><input 
						type="textarea" rows="4" cols="50" name="conteudoPublicacao" placeholder="Escreva o conteúdo aqui" value="${publicacao.conteudoPublicacao}"/><br />
						<input type="submit" value="Enviar"> <input
						type="reset" value="Limpar"> <br />
		</fieldset>
	<a href="index.jsp">Voltar</a>
</body>
</html>