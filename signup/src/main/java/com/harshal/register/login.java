package com.harshal.register;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class login
 */
@WebServlet("/sign")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		HttpSession session = request.getSession();
		Connection con = null;
		RequestDispatcher dispatcher =null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3307/matrimonial?useSSL=false","root","root");
			PreparedStatement pst = con.prepareStatement("select * from register where email = ? and pwd = ?"); 
			pst.setString(1, email); 
			pst.setString(2, pwd); 
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				session.setAttribute("user", rs.getString("user"));
				session.setAttribute("email", rs.getString("email"));
				dispatcher  = request.getRequestDispatcher("main.jsp"); 
				}
			else { 
				request.setAttribute("status", "failed"); 
				dispatcher  = request.getRequestDispatcher("index.jsp"); 
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
