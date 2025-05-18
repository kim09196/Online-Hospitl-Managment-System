

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String specialization = request.getParameter("specialization");
        String contact_number = request.getParameter("contact_number");
        String email = request.getParameter("email");
        String experience = request.getParameter("experience");
        String password = request.getParameter("password");

        // Email validation
        if (!email.endsWith("@doc.com")) {
            request.setAttribute("errorMessage", "Email must end with @doc.com");
            request.getRequestDispatcher("Register_doc.jsp").forward(request, response);
            return; 
        }

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
            String query = "INSERT INTO doctors (name, specialization, contact_number, email, experience, password) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            stmt.setString(2, specialization);
            stmt.setString(3, contact_number);
            stmt.setString(4, email);
            stmt.setString(5, experience);
            stmt.setString(6, hashedPassword);

            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                response.sendRedirect("success.jsp");
            }

            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
