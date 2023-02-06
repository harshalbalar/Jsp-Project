package com.harshal.register;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class register
 */
@WebServlet("/registration")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String user = request.getParameter("user");
		String cont = request.getParameter("cont");
		String pwd = request.getParameter("pwd");	
		Connection con = null;
		RequestDispatcher dispatcher =null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3307/matrimonial?useSSL=false","root","root");
			PreparedStatement pst = con.prepareStatement("insert into register (email, user, pno, pwd) values (?,?,?,?) "); 
			pst.setString(1, email); 
			pst.setString(2, user); 
			pst.setString(3, cont); 
			pst.setString(4, pwd); 
			int rowCount = pst.executeUpdate(); 
			dispatcher  = request.getRequestDispatcher("register.jsp"); 
			if (rowCount > 0) { 
				request.setAttribute("status", "success");
				}
			else { 
				request.setAttribute("status", "failed"); 
				} 
			dispatcher.forward(request,response);
			} 
		catch (Exception e) { 
			e.printStackTrace();
		}
		finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		    }
			
		}
	}

}
