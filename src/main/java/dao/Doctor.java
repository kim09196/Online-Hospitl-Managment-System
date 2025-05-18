  package dao;

public class Doctor {
    private int id;
    private String fullName;
    private String specialization;
    private String contactNumber;
    private String email;
    private int experience; // in years

    // Constructor
    public Doctor(int id, String fullName, String specialization, String contactNumber, String email, int experience) {
        this.id = id;
        this.fullName = fullName;
        this.specialization = specialization;
        this.contactNumber = contactNumber;
        this.email = email;
        this.experience = experience;
    }

    // Getters
    public int getId() { return id; }
    public String getFullName() { return fullName; }
    public String getSpecialization() { return specialization; }
    public String getContactNumber() { return contactNumber; }
    public String getEmail() { return email; }
    public int getExperience() { return experience; }

    // Optional: Format the experience for display
    public String getFormattedExperience() {
        return experience + " years";
    }
}
