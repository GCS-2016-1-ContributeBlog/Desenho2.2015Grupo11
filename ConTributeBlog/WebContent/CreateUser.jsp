<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="user" scope="request" class="br.com.contributeblog.model.UserBeanModel"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Crie uma conta no ConTributeBlog!</title>
</head>
<body>
	Nome:<jsp:getProperty property="userName" name="user"/>
	Sobrenome:<jsp:getProperty property="lastName" name="user"/>
	Email:<jsp:getProperty property="email" name="user"/>
</body>
</html>