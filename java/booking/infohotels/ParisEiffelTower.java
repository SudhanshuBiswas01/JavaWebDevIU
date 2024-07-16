package booking.infohotels;

import java.io.IOException;
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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ParisEiffelTower
 */
@WebServlet("/ParisEiffelTower")
public class ParisEiffelTower extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String checkindate = request.getParameter("checkin");
		String checkoutdate = request.getParameter("checkout");
		String guests = request.getParameter("guests");
		int accommodationId = 12;
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaWebDev?useSSL=false","root","123456789");
			PreparedStatement pst = con.prepareStatement("insert into bookings(accommodationid,checkindate, checkoutdate, guests) values(?,?,?,?)");
			
			pst.setInt(1, accommodationId);
			pst.setString(2, checkindate);
			pst.setString(3, checkoutdate);
			pst.setString(4, guests);
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("Paris Eiffel Tower.html");
			if(rowCount > 0) {
				request.setAttribute("status", "success");

			} else {
			request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

}
