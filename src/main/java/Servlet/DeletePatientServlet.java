package Servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.PatientDAO;

@WebServlet("/DeletePatientServlet")
public class DeletePatientServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int patientId = Integer.parseInt(request.getParameter("patientId"));

        PatientDAO patientDAO = new PatientDAO();
        patientDAO.deletePatient(patientId);

        response.sendRedirect("UpdateReport.jsp"); // Redirect after deletion
    }
}
