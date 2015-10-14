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

import dao.BlogDAO;
import model.Blog;
import model.DonoBlog;




@WebServlet("/ServletBlog")
public class ServletBlog extends HttpServlet {
	
	

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
		List<Blog> lista = new ArrayList<>();
		BlogDAO blogdao = new BlogDAO();
		Blog blog = new Blog();
		DonoBlog donoBlog = new DonoBlog();
		
		try {
			switch (acao) {
				
			
			case "Incluir":
				blog.setTitulo(request.getParameter("titulo"));
				blog.setCategoria(request.getParameter("categoria"));
				donoBlog.setId( Integer.parseInt(request.getParameter("idDonoBlog")));
				
				
				blogdao.criarBlog(blog, donoBlog );
				this.rd = request.getRequestDispatcher("index.jsp");
				this.rd.forward(request, response);
				
				break;
				
			case "Listar":
				lista = blogdao.listarBlog();
				System.out.println(lista);
				request.setAttribute("listaBlog", lista);
				this.rd = request.getRequestDispatcher("listarBlogs.jsp");
				this.rd.forward(request, response);
				
				break;
				
			case "Excluir":
				String idBlog = request.getParameter("idBlog");				
				blogdao.excluir(idBlog);
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
