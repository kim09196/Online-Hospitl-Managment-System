<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.DoctorDAO, dao.Doctor" %>
<%
    DoctorDAO doctorDAO = new DoctorDAO();

    // Retrieve the doctor ID and updated details from the form
    int id = Integer.parseInt(request.getParameter("id"));
    String doctorName = request.getParameter("doctorName");
    String specialization = request.getParameter("specialization");
    String mobileNumber = request.getParameter("mobileNumber");
    String email = request.getParameter("email");
    int experience = Integer.parseInt(request.getParameter("experience")); // Convert to int if necessary

    // Create a Doctor object with the updated details
    Doctor doctor = new Doctor(id, doctorName, specialization, mobileNumber, email, experience);
    
    // Update the doctor record in the database
    doctorDAO.updateDoctor(doctor);

    // Redirect back to the doctor list
    response.sendRedirect("admin_dashboard.jsp"); // Adjust as necessary
%>

