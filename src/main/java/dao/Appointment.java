package dao;

/// insert appointment model class
public class Appointment {
    private int id; 
    private String fullName;
    private String dob; 
    private String email; 
    private String contact; 
    private String department; 
    private String doctor; 
    private String reason; 
// constructor
    public Appointment(int id, String fullName, String dob, String email, String contact, String department, String doctor, String reason) {
        this.id = id;
        this.fullName = fullName;
        this.dob = dob;
        this.email = email;
        this.contact = contact;
        this.department = department;
        this.doctor = doctor;
        this.reason = reason;
    }

    // Getters
    public int getId() { return id; }
    public String getFullName() { return fullName; }
    public String getDob() { return dob; }
    public String getEmail() { return email; }
    public String getContact() { return contact; }
    public String getDepartment() { return department; }
    public String getDoctor() { return doctor; }
    public String getReason() { return reason; }
}
