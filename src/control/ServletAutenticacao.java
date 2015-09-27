package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AutenticacaoDAO;
import dao.UtilizadorDAO;
import model.Utilizador;

@WebServlet("/ServletAutenticacao")
public class ServletAutenticacao extends HttpServlet{
	private static final long serialVerionUID = 1L;
	private RequestDispatcher rd;
	
	public ServletAutenticacao(){
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
							IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
							IOException {
		System.out.println("DO POST");
		String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        
        AutenticacaoDAO autenticacaoDAO = new AutenticacaoDAO(); 
        Utilizador utilizador = new Utilizador();
        System.out.println("INSTANCIA");
        
        utilizador = autenticacaoDAO.autenticarUtilizador(email, senha);
        
        boolean autorizacao = verificarUtilizador(utilizador, email, senha);
        if(autorizacao==true){
        	this.rd = request.getRequestDispatcher("index.jsp");
        	this.rd.forward(request, response);
        	System.out.println(email);
        	System.out.println("AUTORIZADO");
        }else{
        	this.rd = request.getRequestDispatcher("login.jsp");
        	this.rd.forward(request, response);
        	System.out.println("Nao autorizado");
        }
        
	}
	
	public boolean verificarUtilizador(Utilizador utilizador, String email, String senha){
		if(utilizador.getEmail() == email && utilizador.getSenha() == senha){
			System.out.println("trueeee");
			return true;
		}else{
			System.out.println("false");
			return false;
		}
		
	}
	
}
