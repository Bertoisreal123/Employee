package main.java.Document;

public class RequestedFile {
    private String id;
    private String firstName;
    private String middleName;
    private String lastName;
    private String department;
    private String requestingFile;

    // Constructors
    public RequestedFile() {
    }

    public RequestedFile(String id, String firstName, String middleName, String lastName, String department, String requestingFile) {
        this.id = id;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.department = department;
        this.requestingFile = requestingFile;
    }

    // Getters and setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getRequestingFile() {
        return requestingFile;
    }

    public void setRequestingFile(String requestingFile) {
        this.requestingFile = requestingFile;
    }
}
