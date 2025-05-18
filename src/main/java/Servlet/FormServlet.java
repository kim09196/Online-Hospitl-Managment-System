package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/submitForm")
public class FormServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("full_name");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String currentMedications = request.getParameter("current_medications");
        String treatment = request.getParameter("treatment");
        String physicianComments = request.getParameter("physician_comments");

        String jdbcUrl = "jdbc:mysql://localhost:3306/hospitalmanagementsystem?useSSL=false&serverTimezone=UTC"; // Update with your DB URL
        String dbUser = "root"; // Update with your DB user
        String dbPassword = "200229702001"; // Update with your DB password
        String driver = "com.mysql.cj.jdbc.Driver";
        
        try {
            Class.forName(driver); // Load the JDBC driver
            try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword)) {
                String sql = "INSERT INTO patient_records (full_name, dob, gender, current_medications, treatment, physician_comments) VALUES (?, ?, ?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, fullName);
                stmt.setString(2, dob);
                stmt.setString(3, gender);
                stmt.setString(4, currentMedications);
                stmt.setString(5, treatment);
                stmt.setString(6, physicianComments);

                int rowsInserted = stmt.executeUpdate();

                if (rowsInserted > 0) {
                    // Redirect to Doctor_dashboard.jsp on success
                    response.sendRedirect("UpdateReport.jsp");
                } else {
                    response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to save record.");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error: " + e.getMessage());
        }
    }
}
