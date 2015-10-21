package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PublicacaoDAO;
import model.Blog;
import model.Publicacao;

@WebServlet("/ServletPublicacao")
public class ServletPublicacao extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private RequestDispatcher rd;


	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String acao = request.getParameter("acao");
		Publicacao publicacao = new Publicacao();
		PublicacaoDAO publicacaoDAO = new PublicacaoDAO();
		Blog blog = new Blog();
		
		try{
			switch(acao){
			
			
			case "Incluir":
				String socorre = request.getParameter("idBlog");
				publicacao.setTituloPublicacao(request.getParameter("tituloPublicacao"));
				publicacao.setCategoriaPublicacao(request.getParameter("categoriaPublicacao"));
				publicacao.setConteudoPublicacao(request.getParameter("conteudoPublicacao"));
				blog.setIdBlog( Integer.parseInt(request.getParameter("idBlog")));
				
				publicacaoDAO.criarPublicacao(publicacao, blog);
				this.rd = request.getRequestDispatcher("index.jsp");
				this.rd.forward(request, response);
				break;
			case "InstanciaPublicacao":
				String idBlog = request.getParameter("idBlog");
				System.out.println(idBlog);
				request.setAttribute("idBlog", idBlog);
				this.rd = request.getRequestDispatcher("criarPublicacao.jsp");
				this.rd.forward(request, response);
				break;
			}
			
		}catch(Exception e){
			// TODO: handle exception
			
		}
	}
}
