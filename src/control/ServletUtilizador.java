package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UtilizadorDAO;
import model.Utilizador;


@WebServlet("/ServletUtilizador")
public class ServletUtilizador extends HttpServlet {

	
	private static final long serialVersionUID = 1L;
	private RequestDispatcher rd;


	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
		String acao = request.getParameter("acao");
		String destino = "sucesso.jsp";
		String mensagem = "";
		List<Utilizador> lista = new ArrayList<>();
		UtilizadorDAO utilizadordao = new UtilizadorDAO();
		Utilizador utilizador = new Utilizador();
		
		try {
			switch (acao) {
				
			case "Listar":
				lista = utilizadordao.listarUtilizador();
				request.setAttribute("listaUtilizador", lista);
				this.rd = request.getRequestDispatcher("listarUtilizadores.jsp");
				this.rd.forward(request, response);
				break;
			case "Incluir":
				utilizador.setNome(request.getParameter("nome"));
				utilizador.setSobrenome(request.getParameter("sobrenome"));
				utilizador.setGenero(request.getParameter("genero"));
				utilizador.setEmail(request.getParameter("email"));
				utilizador.setSenha(request.getParameter("senha"));
				utilizador.setApelido(request.getParameter("apelido"));
			
				utilizadordao.criarUtilizador(utilizador);
				this.rd = request.getRequestDispatcher("index.jsp");
				this.rd.forward(request, response);
				
				break;
			case "Excluir":
				String id = request.getParameter("id");				
				utilizadordao.excluir(id);
				this.rd = request.getRequestDispatcher("index.jsp");
				this.rd.forward(request, response);
				
			break;
			case "Editar":
				
				break;
			
			default:
				break;
			}
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}

		
		
		
		
	}			
		
	
	
}
