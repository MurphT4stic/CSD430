//Tabari Harvey, Module-4 Assignment, CSD430
package jobapp;

//// File: JobApplication.java
import java.io.Serializable;

public class JobApplication implements Serializable {
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String position;

    // No-argument constructor
    public JobApplication() {}

    // Getters and Setters for each field
    public String getFirstName() { return firstName; }
    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getPosition() { return position; }
    public void setPosition(String position) { this.position = position; }
}
// This class represents a job application with fields for first name, last name, email, phone, and position.
