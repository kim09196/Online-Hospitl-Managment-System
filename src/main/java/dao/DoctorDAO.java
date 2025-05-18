package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DoctorDAO {
    private String jdbcUrl = "jdbc:mysql://localhost:3306/hospitalmanagementsystem?useSSL=false&serverTimezone=UTC";
    private String dbUser = "root";
    private String dbPassword = "200229702001";

    // Retrieve all doctors
    public List<Doctor> getAllDoctors() {
        List<Doctor> doctors = new ArrayList<>();
        String sql = "SELECT id, name, specialization, contact_number, email, experience FROM doctors";

        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                int id = rs.getInt("id");
                String fullName = rs.getString("name");
                String specialization = rs.getString("specialization");
                String contactNumber = rs.getString("contact_number");
                String email = rs.getString("email");
                int experience = rs.getInt("experience");

                Doctor doctor = new Doctor(id, fullName, specialization, contactNumber, email, experience);
                doctors.add(doctor);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Consider logging instead of printing
        }
        return doctors;
    }

    // Update doctor details
    public void updateDoctor(Doctor doctor) {
        String sql = "UPDATE doctors SET name=?, specialization=?, contact_number=?, email=?, experience=? WHERE id=?";
        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, doctor.getFullName());
            stmt.setString(2, doctor.getSpecialization());
            stmt.setString(3, doctor.getContactNumber());
            stmt.setString(4, doctor.getEmail());
            stmt.setInt(5, doctor.getExperience());
            stmt.setInt(6, doctor.getId()); // Use the doctor's ID for the WHERE clause

            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Consider logging instead of printing
        }
    }

    // Retrieve a doctor by ID
    public Doctor getDoctorById(int id) {
        Doctor doctor = null;
        String sql = "SELECT * FROM doctors WHERE id=?";
        
        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                String fullName = rs.getString("name");
                String specialization = rs.getString("specialization");
                String contactNumber = rs.getString("contact_number");
                String email = rs.getString("email");
                int experience = rs.getInt("experience");
                
                doctor = new Doctor(id, fullName, specialization, contactNumber, email, experience);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Consider logging instead of printing
        }
        return doctor;
    }
    
    // Delete a doctor by ID
    public void deleteDoctor(int id) {
        String sql = "DELETE FROM doctors WHERE id = ?";
        
        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Set the ID parameter for the prepared statement
            stmt.setInt(1, id);
            
            // Execute the delete operation
            int rowsAffected = stmt.executeUpdate();
            
            // Optional: Check if a row was deleted
            if (rowsAffected > 0) {
                System.out.println("Doctor with ID " + id + " deleted successfully.");
            } else {
                System.out.println("No doctor found with ID " + id + ".");
            }
            
        } catch (SQLException e) {
            e.printStackTrace(); // Consider logging instead of printing
        }
    }

}

