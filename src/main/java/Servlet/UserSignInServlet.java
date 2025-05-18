package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user_signin")
public class UserSignInServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/hospitalmanagementsystem";
    private static final String DB_USER = "root"; // your MySQL username
    private static final String DB_PASS = "200229702001"; // your MySQL password

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS)) {
                String sql = "SELECT * FROM user WHERE email = ? AND password = ?";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setString(1, email);
                    statement.setString(2, password);
                    ResultSet resultSet = statement.executeQuery();

                    if (resultSet.next()) {
                        // User found, create session
                        HttpSession session = request.getSession();
                        session.setAttribute("user", resultSet.getString("name")); // Store user name in session
                        response.sendRedirect("dashboard.jsp"); // Redirect to dashboard
                    } else {
                        response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Invalid email or password.");
                    }
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "JDBC Driver not found.");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error occurred during sign-in.");
        }
    }
}
