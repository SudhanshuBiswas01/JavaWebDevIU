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
 * Servlet implementation class BerlinPenthouseApartment
 */
@WebServlet("/BerlinPenthouseApartment")
public class BerlinPenthouseApartment extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String checkindate = request.getParameter("checkin");
        String checkoutdate = request.getParameter("checkout");
        String guests = request.getParameter("guests");
        int accommodationId = 2;
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;
        Connection con = null;

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish database connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaWebDev?useSSL=false", "root", "123456789");

            // Prepare SQL statement
            PreparedStatement pst = con.prepareStatement("INSERT INTO bookings(accommodationid, checkindate, checkoutdate, guests) VALUES (?, ?, ?, ?)");
            pst.setInt(1, accommodationId);
            pst.setString(2, checkindate);
            pst.setString(3, checkoutdate);
            pst.setString(4, guests);

            // Execute update
            int CountRow = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("Berlin Penthouse Apartment.html");

            // Check update result
            if (CountRow > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }

            dispatcher.forward(request, response);
        } catch (Exception e) {
            // Log exception details
            e.printStackTrace();
            request.setAttribute("status", "exception");
            request.setAttribute("errorMessage", e.getMessage());
            dispatcher = request.getRequestDispatcher("error.jsp"); // Ensure you have an error page to handle this
            dispatcher.forward(request, response);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
