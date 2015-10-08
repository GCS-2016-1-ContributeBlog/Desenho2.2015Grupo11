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
			<form method="post" action="ServletBlog?acao=Incluir">
				<fieldset>
					<legend>Cadastro de Blog</legend>
			
			
			
						<label>Título:</label><input
						type="text" name="titulo" placeholder="UnB FGA"  value="${blog.titulo}"/><br />
						<label>Categoria:</label><input
						type="text" name="categoria"  placeholder="TCC"  value="${blog.categoria}"/><br />
						
					<input type="submit" value="Enviar"> <input
						type="reset" value="Limpar"> <br />
				</fieldset>
			</form>
			<a href="index.jsp">Voltar</a>
			
		</div>

</body>
</html>