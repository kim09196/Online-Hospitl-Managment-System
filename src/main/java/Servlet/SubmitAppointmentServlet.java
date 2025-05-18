package Servlet;

import java.io.IOException;

// insert appointment servlet
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// model eke data tiaka call krnwa
//insert krpu tik setup krganwa

@WebServlet("/submitAppointment")
public class SubmitAppointmentServlet extends HttpServlet {
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String dob = request.getParameter("dob");
        String department = request.getParameter("department");
        String doctor = request.getParameter("doctor");
        String reason = request.getParameter("reason");
        
       // insert controll class
        // DB connection
        
         String DB_URL = "jdbc:mysql://localhost:3306/hospitalmanagementsystem";
         String DB_USER = "root";
         String DB_PASSWORD = "200229702001";
// insert data function
         
//check conection
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            String sql = "INSERT INTO appointment (fullname, email, contact, dob, department,doctor, reason) VALUES (?, ?, ?, ?, ?,?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, fullname);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, contact);
            preparedStatement.setString(4, dob);
            preparedStatement.setString(5, department);
            preparedStatement.setString(6, doctor);
            preparedStatement.setString(7, reason);
            int row = preparedStatement.executeUpdate();

            PrintWriter out = response.getWriter();
            if (row > 0) {
            	response.sendRedirect("UpdateAppoint.jsp");
            } else {
                out.println("Error submitting appointment.");
            }

            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Database error: " + e.getMessage());
        }
    }
}
