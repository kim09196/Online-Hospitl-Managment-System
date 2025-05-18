package Servlet;

import java.io.IOException;

// Appointment delete servelet
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

@WebServlet("/deleteAppointment")
public class DeleteAppointmentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String appointmentId = request.getParameter("appointmentId");

        if (appointmentId == null || appointmentId.trim().isEmpty()) {
            response.getWriter().println("Invalid appointment ID.");
            return; // Exit early
        }

        /// delete appointment model class
        String DB_URL = "jdbc:mysql://localhost:3306/hospitalmanagementsystem";
        String DB_USER = "root";
        String DB_PASSWORD = "200229702001";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            java.sql.Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            String sql = "DELETE FROM appointment WHERE id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, Integer.parseInt(appointmentId));
            int row = preparedStatement.executeUpdate();
            connection.close();

            if (row > 0) {
                response.sendRedirect("UpdateAppoint.jsp"); // Redirect on success
            } else {
                response.getWriter().println("Error deleting appointment."); // Handle failure
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Database error: " + e.getMessage());
        }
    }
}


