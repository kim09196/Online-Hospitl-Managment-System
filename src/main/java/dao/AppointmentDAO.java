package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
// model class contrller class
public class AppointmentDAO {
    private String jdbcUrl = "jdbc:mysql://localhost:3306/hospitalmanagementsystem?useSSL=false&serverTimezone=UTC";
    private String dbUser = "root";
    private String dbPassword = "200229702001";

    public List<Appointment> getAllAppointment() {
        List<Appointment> appointments = new ArrayList<>();
        String sql = "SELECT id, fullname, dob, email, contact, department, doctor, reason FROM appointment";

        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                int id = rs.getInt("id");
                String fullName = rs.getString("fullname");
                String dob = rs.getString("dob");
                String email = rs.getString("email");
                String contact = rs.getString("contact");
                String department = rs.getString("department");
                String doctor = rs.getString("doctor");
                String reason = rs.getString("reason");

                Appointment appointment = new Appointment(id, fullName, dob, email, contact, department, doctor, reason);
                appointments.add(appointment);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return appointments;
    }
    // update 

    public void updateAppointment(Appointment appointment) {
        String sql = "UPDATE appointment SET fullname=?, dob=?, email=?, contact=?, department=?, doctor=?, reason=? WHERE id=?";
        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, appointment.getFullName());
            stmt.setString(2, appointment.getDob());
            stmt.setString(3, appointment.getEmail());
            stmt.setString(4, appointment.getContact());
            stmt.setString(5, appointment.getDepartment());
            stmt.setString(6, appointment.getDoctor());
            stmt.setString(7, appointment.getReason());
            stmt.setInt(8, appointment.getId());

            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Appointment getAppointmentById(int id) {
        Appointment appointment = null;
        String sql = "SELECT * FROM appointment WHERE id=?";

        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String fullName = rs.getString("fullname");
                String dob = rs.getString("dob");
                String email = rs.getString("email");
                String contact = rs.getString("contact");
                String department = rs.getString("department");
                String doctor = rs.getString("doctor");
                String reason = rs.getString("reason");

                appointment = new Appointment(id, fullName, dob, email, contact, department, doctor, reason);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return appointment;
    }

}