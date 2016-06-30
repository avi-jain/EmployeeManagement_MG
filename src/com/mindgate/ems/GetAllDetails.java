package com.mindgate.ems;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;



/**
 * Servlet implementation class GetAllDetails
 */
@WebServlet(
		description = "fetches all the contents of the table", 
		urlPatterns = { 
				"/getAll"
		})
public class GetAllDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllDetails() {
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
		// JDBC driver name and database URL
	      final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	      final String DB_URL= "jdbc:mysql://localhost:3306/Employee_Mindgate";

	      //  Database credentials
	      final String USER = "root";
	      final String PASS = "";

	      // Set response content type
	      response.setContentType("text/html");
	      //PrintWriter out = response.getWriter();
	         
	      try{
	         // Register JDBC driver
	         Class.forName("com.mysql.jdbc.Driver");

	         // Open a connection
	         Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);

	         // Execute SQL query
	         Statement stmt = conn.createStatement();
	         String sql;
	         sql = "SELECT number, name, age, sal FROM employee_details";
	         ResultSet rs = stmt.executeQuery(sql);
	         List<EmployeeClass> list = new ArrayList<EmployeeClass>();
	         
	         // Extract data from result set
	         while(rs.next()){
	        	EmployeeClass employee = new EmployeeClass();
	            //Retrieve by column name
	            employee.setID(rs.getInt("number"));
	            employee.setName(rs.getString("name"));
	            employee.setAge(rs.getInt("age"));
	            employee.setSal(rs.getInt("sal"));
	            list.add(employee);
	         }
	         request.setAttribute("list",list);

	         RequestDispatcher rd= request.getRequestDispatcher("displayAll.jsp");
	         rd.forward(request, response);
	         // Clean-up environment
	         rs.close();
	         stmt.close();
	         conn.close();
	      }catch(SQLException se){
	         //Handle errors for JDBC
	         se.printStackTrace();
	      }catch(Exception e){
	         //Handle errors for Class.forName
	         e.printStackTrace();
	      }/*finally{
	         //finally block used to close resources
	         try{
	            if(stmt!=null)
	               stmt.close();
	         }catch(SQLException se2){
	         }// nothing we can do
	         try{
	            if(conn!=null)
	            conn.close();
	         }catch(SQLException se){
	            se.printStackTrace();
	         }//end finally try
	      } //end try*/
	   }
}

