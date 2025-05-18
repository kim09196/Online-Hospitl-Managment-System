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

@WebServlet("/submit_patient")
public class patient_details extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Capture form data
        String patientName = request.getParameter("patientName");
        String dob = request.getParameter("dob");
        String diagnosis = request.getParameter("diagnosis");
        String medications = request.getParameter("medications");
        String treatment = request.getParameter("treatment");
        String note = request.getParameter("note");

        // Database connection details
        String jdbcUrl = "jdbc:mysql://localhost:3306/hospitalmanagementsystem?useSSL=false&serverTimezone=UTC"; 
        String dbUser = "root"; 
        String dbPassword = "200229702001"; 
        String driver = "com.mysql.cj.jdbc.Driver";

        try {
            Class.forName(driver); // Load the JDBC driver
            try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword)) {
                String sql = "INSERT INTO patient (PatientName, dob, diagnosis, medications, treatment, note) VALUES (?, ?, ?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, patientName);
                stmt.setString(2, dob);
                stmt.setString(3, diagnosis);
                stmt.setString(4, medications);
                stmt.setString(5, treatment);
                stmt.setString(6, note);

                int rowsInserted = stmt.executeUpdate();

                if (rowsInserted > 0) {
                    // Redirect to a success page
                    response.sendRedirect("success.jsp");
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
