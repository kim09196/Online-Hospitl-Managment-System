<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dao.DoctorDAO" %>
<%@ page import="dao.Doctor" %>

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
                            <a href=""><i class="fas fa-file-alt"></i> <span>Users</span></a>
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
                    <h4 class="page-title">Doctors</h4>
                </div>
                <div class="col-sm-8 col-9 text-right m-b-20">
                    <a href="Doctor_Add_Form.jsp" class="btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Doctor</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-border table-striped custom-table datatable mb-0">
                            <thead>
                                <tr>
                                    <th>Doctor Name</th>
                                    <th>Specialization</th>
                                    <th>Mobile Number</th>
                                    <th>Email Address</th>
                                    <th>Experience (Years)</th>
                                    <th class="text-right">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DoctorDAO doctorDAO = new DoctorDAO();
                                    List<Doctor> doctors = doctorDAO.getAllDoctors(); // Fetch the list of doctors

                                    for (Doctor doctor : doctors) {
                                %>
                                <tr>
                                    <td><%= doctor.getFullName() %></td>
                                    <td><%= doctor.getSpecialization() %></td>
                                    <td><%= doctor.getContactNumber() %></td>
                                    <td><%= doctor.getEmail() %></td>
                                    <td><%= doctor.getExperience() %></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                <i class="fa fa-ellipsis-v"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit_doctor.jsp?id=<%= doctor.getId() %>">
                                                    <i class="fa fa-pencil m-r-5"></i> Edit
                                                </a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor" 
                                                   onclick="setDoctorId(<%= doctor.getId() %>)">
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
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Delete Confirmation Modal -->
    <div class="modal fade" id="delete_doctor" tabindex="-1" role="dialog" aria-labelledby="deleteDoctorLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteDoctorLabel">Delete Doctor</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Are you sure you want to delete this doctor?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <form id="deleteForm" method="post" action="DeleteDoctorServlet">
                        <input type="hidden" name="doctorId" id="doctorId" value="">
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        function setDoctorId(id) {
            document.getElementById('doctorId').value = id;
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
