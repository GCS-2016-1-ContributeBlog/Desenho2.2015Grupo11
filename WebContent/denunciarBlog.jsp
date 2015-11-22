<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<<<<<<< HEAD
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="ServletDenuncia?acao=CriarDenunciaBlog&idBlog=${idBlog}">
		<input type="hidden" name="idUtilizador" id="idUtilizador" class="form-control input-sm" value="${utilizador.id}" placeholder="ID" required>
		<label>Conteudo</label><br />
		<input type="hidden" name="idBlog" id="idBlog" value="${idBlog}">
		<textarea class="form-control" maxlength="150" rows="3" name="conteudoDenuncia" id="conteudo" 
			value="${denuncia.conteudoDenuncia}" placeholder="Escreva a denuncia aqui" required></textarea><br/>
		<input type="submit" value="Enviar" class="btn btn-info btn-sm">
	</form>
                                <div class="form-group">
                                     <input type="hidden" name="idUtilizador" id="idutilizador" class="form-control input-sm" value="${utilizador.id}" placeholder="ID" required>
                                     <input type="hidden" name="idBlog" id="idBlog" value="${idBlog}">
                                </div>

                                <div class="form-group">
                                    <label>Conteúdo</label>
                               <textarea class="form-control" maxlength="150" rows="3" name="conteudoDenuncia" id="conteudo" value="${denuncia.conteudoDenuncia}" placeholder="Escreva a denuncia aqui" required></textarea>
                                </div>
                                <input type="submit" value="Enviar" class="btn btn-info btn-sm">
                                <input type="reset" value="Limpar" class="btn btn-warning btn-sm">
                                <a href="ServletBlog?acao=ListarPublicacoesBlog&idBlog=9" class="btn btn-success btn-sm" role="button">Voltar</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </body>
</html>