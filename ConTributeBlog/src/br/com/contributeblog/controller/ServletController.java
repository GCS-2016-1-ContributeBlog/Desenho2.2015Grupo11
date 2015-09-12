package br.com.contributeblog.controller;


import br.com.contributeblog.model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletController")
public class ServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserBeanModel user = new UserBeanModel();
		user.setUserName(request.getParameter("userName"));
		user.setLastName(request.getParameter("lastName"));
		user.setEmail(request.getParameter("email"));
		request.setAttribute("user", user);
		getServletContext().getRequestDispatcher("/CreateUser.jsp").forward(request, response);
		
	}

}
