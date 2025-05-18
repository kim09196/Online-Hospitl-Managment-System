<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dao.AppointmentDAO" %>
<%@ page import="dao.Appointment" %>

<%
    AppointmentDAO appointmentDAO = new AppointmentDAO();
    int appointmentId = Integer.parseInt(request.getParameter("id"));
    Appointment appointment = appointmentDAO.getAppointmentById(appointmentId);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Appointment</title>
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico" />
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="plugins/icofont/icofont.min.css">
    <link rel="stylesheet" href="plugins/slick-carousel/slick/slick.css">
    <link rel="stylesheet" href="plugins/slick-carousel/slick/slick-theme.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #343a40;
            margin-bottom: 20px;
        }

        form {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ced4da;
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
            font-size: 16px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        textarea {
            resize: vertical;
        }

        @media (max-width: 600px) {
            form {
                padding: 15px;
            }

            input[type="submit"] {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="header-top-bar">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <ul class="top-bar-info list-inline-item pl-0 mb-0">
                        <li class="list-inline-item">
                            <a href="mailto:support@gmail.com">
                                <i class="icofont-support-faq mr-2"></i>support@HelthSync.com
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <i class="icofont-location-pin mr-2"></i>Address No, 134/A, Colombo, Sri Lanka
                        </li>
                    </ul>
                </div>
                <div class="col-lg-6">
                    <div class="text-lg-right top-right-bar mt-2 mt-lg-0">
                        <a href="tel:+23-345-67890">
                            <span>Call Now: </span>
                            <span class="h4">+94-11-222-34-567</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <h1>Edit Appointment</h1>
    <form action="updateappointment.jsp" method="POST">
        <input type="hidden" name="id" value="<%= appointment.getId() %>">

        Full Name:<input type="text"  name="fullname" value="<%= appointment.getFullName() %>" required>

        Email:<input type="email"  name="email" value="<%= appointment.getEmail() %>" required>

        Contact:<input type="text"  name="contact" value="<%= appointment.getContact() %>" required>

        Date of Birth: <input type="date"  name="dob" value="<%= appointment.getDob() %>" required>

        Department:<input type="text"  name="department" value="<%= appointment.getDepartment() %>" required>

        Doctor:<input type="text"  name="doctor" value="<%= appointment.getDoctor() %>" required>

        Reason:<textarea  name="reason" required><%= appointment.getReason() %></textarea>

        <input type="submit" value="Update">
        
    </form>
</body>
</html>
