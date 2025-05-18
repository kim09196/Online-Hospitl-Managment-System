package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Hash the password
        String hashedPassword = null;
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(password.getBytes());
            hashedPassword = new String(md.digest());
        } catch (Exception e) {
            e.printStackTrace();
        }

        String url = "jdbc:mysql://localhost:3306/hospitalmanagementsystem";
        String user = "root"; 
        String pass = "200229702001"; 
        String driver = "com.mysql.cj.jdbc.Driver";

        try {
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, user, pass);
            String query = "SELECT * FROM doctors WHERE email = ? AND password = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, email);
            stmt.setString(2, hashedPassword);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                // Create session and store user details
                request.getSession().setAttribute("userEmail", email);
                response.sendRedirect("UpdateReport.jsp");
            } else {
                request.setAttribute("errorMessage", "Invalid email or password.");
                request.getRequestDispatcher("login_doc.jsp").forward(request, response);
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        }
    }
}
