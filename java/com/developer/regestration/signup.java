package com.developer.regestration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class signup
 */
@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gname = request.getParameter("name");
		String gemail = request.getParameter("email");
		String gpass = request.getParameter("pass");
		String gno = request.getParameter("contact");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaWebDev?useSSL=false","root","123456789");
			PreparedStatement pst = con.prepareStatement("insert into Guest(gname,gemail,gpass,gno) values(?,?,?,?)");
			pst.setString(1, gname);
			pst.setString(2, gemail);
			pst.setString(3, gpass);
			pst.setString(4, gno);
			
			int rowCount = pst.executeUpdate();
			
			if(rowCount > 0 ) {
				request.setAttribute("status", "success");
				dispatcher = request.getRequestDispatcher("registration.jsp");
			} else {
				 request.setAttribute("Status", "failed");
			}
			dispatcher.forward(request, response);
			
			
		} catch (Exception e ) {
			
		} finally {
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}
}
