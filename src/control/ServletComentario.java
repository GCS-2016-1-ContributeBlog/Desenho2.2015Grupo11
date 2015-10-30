package control;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ComentarioDAO;
import model.Comentario;
import model.Publicacao;
import model.Utilizador;

@WebServlet("/ServletComentario")
public class ServletComentario extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private RequestDispatcher rd;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			
		String acao = request.getParameter("acao");
		

		Comentario comentario = new Comentario();
		ComentarioDAO comentarioDAO = new ComentarioDAO();
		Utilizador utilizador = new Utilizador();
		Publicacao publicacao = new Publicacao();
		
		try {
			switch (acao) {
			
			case "Criar":
				comentario.setConteudoComentario(request.getParameter("conteudoComentario"));
				utilizador.setId(Integer.parseInt(request.getParameter("idUtilizador")));
				int idPublicacaoCriar = (Integer.parseInt(request.getParameter("idPublicacao")));
				
				comentarioDAO.criarComentario(comentario, utilizador, idPublicacaoCriar);
				this.rd = request.getRequestDispatcher("index.jsp");
				this.rd.forward(request, response);
				
				break;
				
			case "InstanciaPublicacao":
				String idPublicacao = request.getParameter("idPublicacao");
				request.setAttribute("idPublicacao", idPublicacao);
				this.rd = request.getRequestDispatcher("criarComentario.jsp");
				this.rd.forward(request, response);
				
				break;
				
			default:
				break;
			}
		}catch(Exception e) {
			// TODO: handle exception)
		}
		
	}
}
