package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PatientDAO {
    private String jdbcUrl = "jdbc:mysql://localhost:3306/hospitalmanagementsystem?useSSL=false&serverTimezone=UTC";
    private String dbUser = "root";
    private String dbPassword = "200229702001";

    // Retrieve all patients
    public List<Patient> getAllPatients() {
        List<Patient> patients = new ArrayList<>();
        String sql = "SELECT id, full_name, dob, gender, current_medications, treatment, physician_comments FROM patient_records";

        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                int id = rs.getInt("id");
                String fullName = rs.getString("full_name");
                String dob = rs.getString("dob");
                String gender = rs.getString("gender");
                String currentMedications = rs.getString("current_medications");
                String treatment = rs.getString("treatment");
                String physicianComments = rs.getString("physician_comments");

                Patient patient = new Patient(id, fullName, dob, gender, currentMedications, treatment, physicianComments);
                patients.add(patient);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Consider logging instead of printing
        }
        return patients;
    }

    // Update patient details
    public void updatePatient(Patient patient) {
        String sql = "UPDATE patient_records SET full_name=?, dob=?, gender=?, current_medications=?, treatment=?, physician_comments=? WHERE id=?";
        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, patient.getFullName());
            stmt.setString(2, patient.getDob());
            stmt.setString(3, patient.getGender());
            stmt.setString(4, patient.getCurrentMedications());
            stmt.setString(5, patient.getTreatment());
            stmt.setString(6, patient.getPhysicianComments());
            stmt.setInt(7, patient.getId()); // Use the patient's ID for the WHERE clause

            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Consider logging instead of printing
        }
    }

    // Retrieve a patient by ID
    public Patient getPatientById(int id) {
        Patient patient = null;
        String sql = "SELECT * FROM patient_records WHERE id=?";
        
        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                String fullName = rs.getString("full_name");
                String dob = rs.getString("dob");
                String gender = rs.getString("gender");
                String currentMedications = rs.getString("current_medications");
                String treatment = rs.getString("treatment");
                String physicianComments = rs.getString("physician_comments");
                
                patient = new Patient(id, fullName, dob, gender, currentMedications, treatment, physicianComments);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Consider logging instead of printing
        }
        return patient;
    }
    
    // Delete a patient by ID
    public void deletePatient(int id) {
        String sql = "DELETE FROM patient_records WHERE id=?";
        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Consider logging instead of printing
        }
    }
}
