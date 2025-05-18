package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.DoctorDAO;

@WebServlet("/DeleteDoctorServlet")
public class DeleteDoctorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Change the parameter to "doctorId" to match the form field
        int doctorId = Integer.parseInt(request.getParameter("doctorId"));

        // Use DoctorDAO instead of PatientDAO
        DoctorDAO doctorDAO = new DoctorDAO();
        doctorDAO.deleteDoctor(doctorId); // Call the delete method for doctor

        // Redirect after deletion
        response.sendRedirect("admin_dashboard.jsp"); // Update the redirect to the appropriate page
    }
}
