<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dao.PatientDAO" %>
<%@ page import="dao.Patient" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <title>Health Sync</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/Dashboard.css">

    <style>
        .table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .table-border th, 
        .table-border td {
            border: 1px solid #ddd;
        }

        .table th {
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            text-align: left;
        }

        .table td {
            padding: 12px;
            text-align: left;
        }

        .table-striped tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .table-striped tr:hover {
            background-color: #f1f1f1;
        }

        .text-right {
            text-align: right;
        }

        .mb-0 {
            margin-bottom: 0;
        }
    </style>
</head>

<body>
    <div class="main-wrapper">
        <div class="header">
            <div class="header-left">
                <a class="logo">
                    <img src="images/logo.png" width="80%" height="auto"> 
                </a>
            </div>
        </div>

        <div class="sidebar" id="sidebar">
            <div class="sidebar-inner slimscroll">
                <div id="sidebar-menu" class="sidebar-menu">
                    <ul>
                        <li class="menu-title" style="margin-bottom: 20px;">Main</li>
                        <li class="active" style="margin-bottom: 15px;">
                            <a href=""><i class="fas fa-file-alt"></i> <span>Your Reports</span></a>
                        </li>
                        <li class="active" style="margin-bottom: 15px;">
                            <a href="appoinment.jsp"><i class="fas fa-calendar-check"></i> <span>Appointment</span></a>
                        </li>
                        <li class="active" style="margin-bottom: 15px; text-align: center;">
                            <a href="index.jsp" class="btn btn-primary btn-rounded" style="width: 100%;">
                                <i class="fas fa-home"></i> <span>Back to Home</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-4 col-3">
                    <h4 class="page-title">Reports</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-border table-striped custom-table datatable mb-0">
                            <thead>
                                <tr>
                                    <th>Full Name</th>
                                    <th>Date </th>
                                    <th>Gender</th>
                                    <th>Current Medications</th>
                                    <th>Treatment</th>
                                    <th>Physician Comments</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    PatientDAO patientDAO = new PatientDAO();
                                    List<Patient> patients = patientDAO.getAllPatients();
                                    for (Patient patient : patients) {
                                %>
                                    <tr>
                                        <td><%= patient.getFullName() %></td>
                                        <td><%= patient.getFormattedDob() %></td> <!-- Updated to use formatted DOB -->
                                        <td><%= patient.getGender() %></td>
                                        <td><%= patient.getCurrentMedications() %></td>
                                        <td><%= patient.getTreatment() %></td>
                                        <td><%= patient.getPhysicianComments() %></td>
                                    </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
