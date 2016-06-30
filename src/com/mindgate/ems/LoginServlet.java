package com.mindgate.ems;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;  
import javax.servlet.RequestDispatcher;  

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(description = "Used to validate login", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("userId");
		String password = request.getParameter("pwd");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		if( username.equals("admin") && password.equals("avijain")){
			 RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			 rd.forward(request,response);
		}
		else{
			out.print("Invalid Login Credentials");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.include(request,response);
		}
	}

}
