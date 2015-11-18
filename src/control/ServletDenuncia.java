package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FabricaDenunciaBlogDAO;
import dao.FabricaDenunciaPublicacaoDAO;
import model.Blog;
import model.DenunciaBlog;
import model.DenunciaPublicacao;
import model.Utilizador;

@WebServlet("/ServletDenuncia")
public class ServletDenuncia extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private RequestDispatcher rd;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String acao = request.getParameter("acao");
		
		DenunciaBlog denunciaBlog = new DenunciaBlog();
		DenunciaPublicacao denunciaPublicacao = new DenunciaPublicacao();
		FabricaDenunciaBlogDAO denunciaBlogDAO = new FabricaDenunciaBlogDAO();
		FabricaDenunciaPublicacaoDAO denunciaPublicacaoDAO = new FabricaDenunciaPublicacaoDAO();
		Utilizador utilizador = new Utilizador();
		Blog blog = new Blog();
		
		try{
			switch(acao){
			case "CriarDenunciaBlog":
				denunciaBlog.setConteudoDenuncia(request.getParameter("conteudoDenuncia"));
				utilizador.setId(Integer.parseInt(request.getParameter("idUtilizador")));
				int idBlog = Integer.parseInt(request.getParameter("idBlog"));
				denunciaBlogDAO.criarDenuncia(idBlog, denunciaBlog, utilizador);
				
				this.rd = request.getRequestDispatcher("index.jsp");
				this.rd.forward(request, response);
				break;
			
			
			case "InstanciaBlog":
				String idBlogD= request.getParameter("idBlog");
				request.setAttribute("idBlog", idBlogD);
				this.rd = request.getRequestDispatcher("denunciarBlog.jsp");
				this.rd.forward(request, response);
				break;
			
		
			case "CriarDenunciaPublicacao":
				denunciaPublicacao.setConteudoDenuncia(request.getParameter("conteudoDenuncia"));
				utilizador.setId(Integer.parseInt(request.getParameter("idUtilizador")));
				int idPublicacao = Integer.parseInt(request.getParameter("idPublicacao"));
				denunciaPublicacaoDAO.criarDenuncia(idPublicacao, denunciaPublicacao, utilizador);
				
				this.rd = request.getRequestDispatcher("index.jsp");
				this.rd.forward(request, response);
				break;
				
			case "InstanciaPublicacao":
				String idPublicacaoD= request.getParameter("idPublicacao");
				request.setAttribute("idPublicacao", idPublicacaoD);
				this.rd = request.getRequestDispatcher("denunciarPublicacao.jsp");
				this.rd.forward(request, response);
				break;
			}
		}catch(Exception e){
			// TODO: handle exception)
		}
		
		
	}
}
