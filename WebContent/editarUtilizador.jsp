<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE ht ml PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<form method="post" action="ServletUtilizador?acao=Editar">
			<fieldset>
				<legend>Editar Cadastro</legend>
					<label>ID:</label><input name="id" autofocus="autofocus" placeholder="id" value="${utilizador.id}">
					<label>Nome:</label><input
						name="nome" autofocus="autofocus" placeholder="Nome"  value="${utilizador.nome}"/><br />
					<label>Sobrenome:</label><input
						name="sobrenome" autofocus="autofocus" placeholder="Sobrenome"  value="${utilizador.sobrenome}"/><br />
					<label>Email:</label><input
						name="email" autofocus="autofocus" placeholder="Email"  value="${utilizador.email}"/><br />
						<label>Genero:</label><input
						name="genero" autofocus="autofocus" placeholder="Genero"  value="${utilizador.genero}"/><br />
						<label>Senha:</label><input
						name="senha" autofocus="autofocus" placeholder="Senha"  value="${utilizador.senha}"/><br />
						<label>Apelido:</label><input
						name="apelido" autofocus="autofocus" placeholder="Apelido"  value="${utilizador.apelido}"/><br />
					<input type="submit" value="Enviar"> <input
						type="reset" value="Limpar"> <br />
				</fieldset>
			</form>
			<a href="index.jsp">Voltar</a>
			
	</div>
</body>
</html>