package dao;

//import java.sql.Date;

public class Patient {
    private int id;
    private String fullName;
    private String dob; // Date of Birth
    private String gender;
    private String currentMedications;
    private String treatment;
    private String physicianComments;

    // Constructor
    public Patient(int id, String fullName, String dob, String gender, String currentMedications, String treatment, String physicianComments) {
        this.id = id;
        this.fullName = fullName;
        this.dob = dob;
        this.gender = gender;
        this.currentMedications = currentMedications;
        this.treatment = treatment;
        this.physicianComments = physicianComments;
    }

    // Getters
    public int getId() { return id; }
    public String getFullName() { return fullName; }
    public String getDob() { return dob; }
    public String getGender() { return gender; }
    public String getCurrentMedications() { return currentMedications; }
    public String getTreatment() { return treatment; }
    public String getPhysicianComments() { return physicianComments; }

    // Optional: Format the date as a String for display
    public String getFormattedDob() {
        return dob != null ? dob.toString() : "N/A"; // Format as needed
    }
}
