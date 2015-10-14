<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<P>Bem vindo, ${utilizador.nome}!</P>
	<a href="ServletUtilizador?acao=ListarPerfil&id=${utilizador.id}">Editar Perfil</a>
	<a href="ServletUtilizador?acao=Excluir&id=${utilizador.id}">Excluir Perfil</a>
	<a href="blog.jsp?idDonoBlog=${utilizador.id}">Criar Blog</a>
</body>
</html>