<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="ServletDenuncia?acao=CriarDenunciaBlog">
		<label>Conteudo</label><br />
		<textarea class="form-control" maxlength="150" rows="3" name="conteudoDenuncia" id="conteudo" 
			value="${denuncia.conteudoDenuncia}" placeholder="Escreva a denuncia aqui" required></textarea><br/>
		<input type="submit" value="Enviar" class="btn btn-info btn-sm">
	</form>

</body>
</html>