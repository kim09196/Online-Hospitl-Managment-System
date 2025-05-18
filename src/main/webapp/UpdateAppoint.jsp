<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dao.AppointmentDAO" %>
<%@ page import="dao.Appointment" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/Dashboard.css">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <title>Health Sync</title>
    <link rel="stylesheet" href="css/style.css">

    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px 0;
            margin-left: 150px;
        }

        h1 {
            font-size: 3em;
            margin: 10px 0;
            text-align: left;
            font-weight: bold;
            margin-left: 600px;
        }

        thead {
            background-color: #f2f2f2;
        }

        th {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th.text-right {
            text-align: right;
        }

        tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tbody tr:hover {
            background-color: #f1f1f1;
        }

        td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
    </style>
</head>

<body id="top">
<header>
    <div class="header-top-bar">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <ul class="top-bar-info list-inline-item pl-0 mb-0">
                        <li class="list-inline-item"><a href="mailto:support@gmail.com"><i class="icofont-support-faq mr-2"></i>support@HealthSync.com</a></li>
                        <li class="list-inline-item"><i class="icofont-location-pin mr-2"></i>Address No,134/A, Colombo , Sri Lanka </li>
                    </ul>
                </div>
                <div class="col-lg-6">
                    <div class="text-lg-right top-right-bar mt-2 mt-lg-0">
                        <a href="tel:+23-345-67890">
                            <span>Call Now : </span>
                            <span class="h4">+94-11-222-34-567</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<h1>Appointment List</h1>
<table>
    <thead>
        <tr>
            <th>Full Name</th>
            <th>Date of Birth</th>
            <th>Email</th>
            <th>Contact</th>
            <th>Department</th>
            <th>Doctor</th>
            <th>Reason</th>
            <th class="text-right">Action</th>
        </tr>
    </thead>
    <tbody>
        <%
            AppointmentDAO appointmentDAO = new AppointmentDAO();
            List<Appointment> appointments = appointmentDAO.getAllAppointment();
            for (Appointment appointment : appointments) {
        %>
        <tr>
            <td><%= appointment.getFullName() %></td>
            <td><%= appointment.getDob() %></td>
            <td><%= appointment.getEmail() %></td>
            <td><%= appointment.getContact() %></td>
            <td><%= appointment.getDepartment() %></td>
            <td><%= appointment.getDoctor() %></td>
            <td><%= appointment.getReason() %></td>
            <td class="text-right">
                <div class="dropdown dropdown-action">
                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="editApoointment.jsp?id=<%= appointment.getId() %>"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_appointment" onclick="setAppointmentId(<%= appointment.getId() %>)">
                            <i class="fa fa-trash-o m-r-5"></i> Delete
                        </a>
                    </div>
                </div>
            </td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

<div class="col-sm-8 col-9 text-right m-b-20">
    <a href="appoinment.jsp" class="btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Make Appointment</a>
</div>

<div class="col-sm-8 col-9 text-right m-b-20">
    <a href="index.jsp" class="btn btn-primary btn-rounded float-right"> Back to Home</a>
</div>

<!-- Delete Confirmation Modal -->
<div class="modal fade" id="delete_appointment" tabindex="-1" role="dialog" aria-labelledby="deleteAppointmentLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteAppointmentLabel">Delete Appointment</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this appointment?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <form id="deleteForm" method="post" action="deleteAppointment">
                    <input type="hidden" name="appointmentId" id="patientId" value="">
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- jQuery and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
    function setAppointmentId(id) {
        document.getElementById('patientId').value = id; // Set the ID in the hidden input
    }
</script>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/select2.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap4.min.js"></script>
<script src="js/moment.min.js"></script>
<script src="js/bootstrap-datetimepicker.min.js"></script>
<script src="js/app.js"></script>
</body>
</html>
