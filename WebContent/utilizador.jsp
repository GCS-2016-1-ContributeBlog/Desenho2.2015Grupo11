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
		<form method="post" action="ServletUtilizador?acao=Incluir">
			<fieldset>
				<legend>Cadastro de Utilizador</legend>
		
		
		
			<label>identificador: </label><input name="id" required  value="${utilizador.id}"
					placeholder="2236541" /><br /> 
				<label>Name:</label><input
					name="nome" autofocus="autofocus" placeholder="Nome"  value="${utilizador.nome}"/><br />
					<label>Sobrenome:</label><input
					name="sobrenome" autofocus="autofocus" placeholder="Sobrenomeome"  value="${utilizador.sobrenome}"/><br />
				 <label>Email:</label><input
					type="email" name="email" placeholder="contribute@email.com.br"  value="${utilizador.email}"/><br />
					<label>Genero:</label><input
					 name="genero" placeholder="genero"  value="${utilizador.genero}"/><br />
					<label>Senha:</label><input
					type="password" name="senha" placeholder=""  value="${utilizador.senha}"/><br />
					<label>Apelido:</label><input
					 name="apelido" placeholder="apelido"  value="${utilizador.apelido}"/><br />
					
				<input type="submit" value="Enviar"> <input
					type="reset" value="Limpar"> <br />
			</fieldset>
		</form>
		<a href="index.jsp">Voltar</a>
		
		</div>
</body>
</html>