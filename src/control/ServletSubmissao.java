package control;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PublicacaoColaborativa;
import dao.SubmissaoDAO;

/**
 * Servlet implementation class ServletSubmissao
 */
@WebServlet("/ServletSubmissao")
public class ServletSubmissao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */

		SubmissaoDAO subDAO = new SubmissaoDAO();
		PublicacaoColaborativa pubColaborativa = new PublicacaoColaborativa();
		private RequestDispatcher rd;

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
		System.out.println(acao);
		
		
		try {
			switch (acao) {
				
			case "SubmeterPostagem":
				System.out.println("Entrou");
				//int idBlog = Integer.parseInt();
				System.out.println(request.getParameter("idBlog"));
				System.out.println("Entrou1");
				
				String idUtilizador = request.getParameter("idUtilizador");
				
				
				pubColaborativa.setCategoriaPublicacao(request.getParameter("categoriaPublicacao"));
				System.out.println(request.getParameter("categoriaPublicacao"));
				pubColaborativa.setConteudoPublicacao(request.getParameter("conteudoPublicacao"));
				System.out.println(request.getParameter("conteudoPublicacao"));
				
				pubColaborativa.setTituloPublicacao(request.getParameter("tituloPublicacao"));
				System.out.println(request.getParameter("tituloPublicacao"));
			//	subDAO.publicacaoColaborativa(idBlog, pubColaborativa);
				this.rd = request.getRequestDispatcher("index.jsp");
				this.rd.forward(request, response);
				
				
			default:
				break;
				
			}
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}

		
		
		
		
	}		
		
		
		
		
	}


