<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.PatientDAO, dao.Patient" %>
<%
    PatientDAO patientDAO = new PatientDAO();

    // Retrieve the patient ID and updated details from the form
    int id = Integer.parseInt(request.getParameter("id"));
    String fullName = request.getParameter("fullName");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");
    String currentMedications = request.getParameter("currentMedications");
    String treatment = request.getParameter("treatment");
    String physicianComments = request.getParameter("physicianComments");

    // Create a Patient object with the updated details
    Patient patient = new Patient(id, fullName, dob, gender, currentMedications, treatment, physicianComments);
    
    // Update the patient record in the database
    patientDAO.updatePatient(patient);

    // Redirect back to the patient list
    response.sendRedirect("UpdateReport.jsp");
%>
