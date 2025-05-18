<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.DoctorDAO, dao.Doctor" %>
<%
    DoctorDAO doctorDAO = new DoctorDAO();
    int doctorId = Integer.parseInt(request.getParameter("id"));
    Doctor doctor = doctorDAO.getDoctorById(doctorId); // Ensure this method exists
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit Doctor</title>
    <style>
        form {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Edit Doctor</h2>
    <form action="updateDoctor.jsp" method="post">
        <input type="hidden" name="id" value="<%= doctor.getId() %>">
        Doctor Name: <input type="text" name="doctorName" value="<%= doctor.getFullName() %>" required><br>
        Specialization: <input type="text" name="specialization" value="<%= doctor.getSpecialization() %>" required><br>
        Mobile Number: <input type="text" name="mobileNumber" value="<%= doctor.getContactNumber() %>" required><br>
        Email Address: <input type="email" name="email" value="<%= doctor.getEmail() %>" required><br>
        Experience: <input type="text" name="experience" value="<%= doctor.getExperience() %>" required><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
