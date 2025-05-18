package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/submitDoctor")
public class DoctorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get parameters from the request
        String name = request.getParameter("name");
        String specialization = request.getParameter("specialization");
        String contactNumber = request.getParameter("contact");
        String email = request.getParameter("email");
        String experience = request.getParameter("experience");

        String url = "jdbc:mysql://localhost:3306/hospitalmanagementsystem";
        String user = "root";
        String password = "200229702001";

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection to the database
            try (Connection conn = DriverManager.getConnection(url, user, password)) {
                // Prepare the SQL insert statement
                String sql = "INSERT INTO doctors (name, specialization, contact_number, email, experience) VALUES (?, ?, ?, ?, ?)";
                try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                    pstmt.setString(1, name);
                    pstmt.setString(2, specialization);
                    pstmt.setString(3, contactNumber);
                    pstmt.setString(4, email);
                    pstmt.setInt(5, Integer.parseInt(experience)); // Ensure this is an integer
                    // Execute the insert operation
                    pstmt.executeUpdate();
                }
            }

            // Redirect to the admin dashboard after successful insertion
            response.sendRedirect("admin_dashboard.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error: " + e.getMessage());
        }
    }
}
