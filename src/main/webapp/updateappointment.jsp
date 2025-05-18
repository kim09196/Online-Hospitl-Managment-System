<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.AppointmentDAO, dao.Appointment" %>
<%
    AppointmentDAO appointmentDAO = new AppointmentDAO();

    int id = Integer.parseInt(request.getParameter("id"));
    String fullName = request.getParameter("fullname");
    String dob = request.getParameter("dob");
    String email = request.getParameter("email");
    String contact = request.getParameter("contact");
    String department = request.getParameter("department");
    String doctor = request.getParameter("doctor");
    String reason = request.getParameter("reason");

    Appointment appointment = new Appointment(id, fullName, dob, email, contact, department, doctor, reason);
    appointmentDAO.updateAppointment(appointment);

    response.sendRedirect("UpdateAppoint.jsp");
%>
