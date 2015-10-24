package control;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletSubmissao
 */
@WebServlet("/ServletSubmissao")
public class ServletSubmissao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String acao = request.getParameter("acao");
		
		try {
			switch (acao) {
				
			case "SubmeterPostagem":
				
				String idBlog = request.getParameter("idBlog");
				String idUtilizador = request.getParameter("idUtilizador");
				
				
				
				/*
				 * Pegar o Id do Blog e o id do usuário 
				 * e cria uma solicitação de postagem que vai ser aprovada pelo Dono do blog.
				 * Tabela Blog tem varias ou nenhuma postagem submetidas
				 * Criar tabela de postagens Submetidas com o indice do blog
				 * Criar função para Adicionar postatgemSubmetida ao blog
				 * Adicionar postagem submetida a postagem do BLog
				 * Lista todas as postagens do blog incluindo as submetidas
				 * 
				 * 
				 * */	
				
				
				
			default:
				break;
				
			}
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}

		
		
		
		
	}		
		
		
		
		
	}


