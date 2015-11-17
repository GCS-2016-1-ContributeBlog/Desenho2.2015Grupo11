package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FabricaDenunciaBlogDAO;
import model.DenunciaBlog;

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
		FabricaDenunciaBlogDAO denunciaBlogDAO = new FabricaDenunciaBlogDAO();
		
		try{
			switch(acao){
			case "CriarDenunciaBlog":
				denunciaBlog.setConteudoDenuncia(request.getParameter("conteudoDenuncia"));
				denunciaBlogDAO.criarDenuncia(1, denunciaBlog);
				this.rd = request.getRequestDispatcher("index.jsp");
				this.rd.forward(request, response);
				break;
			}
		}catch(Exception e){
			// TODO: handle exception)
		}
		
		
	}
}
