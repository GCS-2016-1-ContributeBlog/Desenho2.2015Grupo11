<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Painel Administrativo Blog</title>
</head>
<body>
<P>Bem vindo, ${idBlog}!</P>

<td><a href="ServletPublicacao?acao=InstanciaPublicacao&idBlog=${idBlog}">Criar Publicacação</a></td></br>
<td><a href="ServletBlog?acao=Excluir&idBlog=${idBlog}">Excluir</a></td></br>
<td><a href="ServletBlog?acao=ListarPublicacoes&idBlog=${idBlog}">Ver Publicacoes</a></br>
<td><a href="ServletSubmissao?acao=AprovarPublicacoes&idBlog=${idBlog}">Ver Publicacoes Colaborativas para Aprovação</a></br>


</body>
</html>