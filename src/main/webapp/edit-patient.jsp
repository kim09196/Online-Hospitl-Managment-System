<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.PatientDAO, dao.Patient" %>
<%
    PatientDAO patientDAO = new PatientDAO();
    int patientId = Integer.parseInt(request.getParameter("id"));
    Patient patient = patientDAO.getPatientById(patientId);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit Patient</title>
    <style>
    form {
    width: 50%; /* Set the form width to 50% */
    margin: 20px auto; /* Center the form */
    padding: 20px; /* Add padding */
    border: 1px solid #ddd; /* Light border around the form */
    border-radius: 8px; /* Rounded corners */
    background-color: #f9f9f9; /* Light background color */
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
}

h2 {
    text-align: center; /* Center the heading */
    color: #333; /* Darker text color */
}

label {
    display: block; /* Make labels block-level */
    margin-bottom: 5px; /* Space between label and input */
    font-weight: bold; /* Bold labels */
}

input[type="text"],
input[type="date"] {
    width: 100%; /* Full width inputs */
    padding: 10px; /* Padding inside the input */
    margin-bottom: 15px; /* Space below each input */
    border: 1px solid #ccc; /* Border around inputs */
    border-radius: 4px; /* Rounded corners */
    box-sizing: border-box; /* Include padding and border in total width/height */
}

input[type="submit"] {
    background-color: #007bff; /* Button background color */
    color: white; /* Button text color */
    padding: 10px 15px; /* Padding inside the button */
    border: none; /* Remove default border */
    border-radius: 4px; /* Rounded corners */
    cursor: pointer; /* Pointer cursor on hover */
    width: 100%; /* Full width for the button */
}

input[type="submit"]:hover {
    background-color: #0056b3; /* Darker blue on hover */
}
    
    </style>
   
</head>
<body>
    <h2>Edit Patient Report</h2>
    <form action="updatePatient.jsp" method="post">
        <input type="hidden" name="id" value="<%= patient.getId() %>">
        Full Name: <input type="text" name="fullName" value="<%= patient.getFullName() %>" required><br>
        Date of Birth: <input type="date" name="dob" value="<%= patient.getDob() %>" required><br>
        Gender: <input type="text" name="gender" value="<%= patient.getGender() %>" required><br>
        Current Medications: <input type="text" name="currentMedications" value="<%= patient.getCurrentMedications() %>" required><br>
        Treatment: <input type="text" name="treatment" value="<%= patient.getTreatment() %>" required><br>
        Physician Comments: <input type="text" name="physicianComments" value="<%= patient.getPhysicianComments() %>" required><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
