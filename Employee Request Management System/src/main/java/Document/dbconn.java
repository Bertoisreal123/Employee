package main.java.Document;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class dbconn {
    
    // Database connection details
    private static final String JDBC_DRIVER = "org.apache.derby.jdbc.EmbeddedDriver";
    private static final String DB_URL = "jdbc:derby:C:\\Resquest;create=true";
    private static final String USER = "cj";
    private static final String PASS = "123";

    // Load the JDBC driver
    static {
        try {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new IllegalStateException("Failed to load JDBC driver: " + JDBC_DRIVER, e);
        }
    }

    // Function to check if a user with the provided credentials exists in the database
    public static boolean isValidUser(String username, String password) {
        try (
            // Establish a connection to the database
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            // SQL query to check for a valid user with the provided username and password
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM EMPLOYEEREGISTER.USER_INFO WHERE USERNAME=? AND PASSWORD=?");
            PreparedStatement pstmtAdmin = conn.prepareStatement("SELECT * FROM ADMINREGISTER WHERE USERNAME=? AND PASSWORD=?");
        ) {
            pstmt.setString(1, username);
            pstmt.setString(2, password);

            // Execute the query and check if the result set has at least one row (valid user)
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return true;
                }
            }

            // Additional login check (example: checking against another table)
            pstmtAdmin.setString(1, username);
            pstmtAdmin.setString(2, password);
            try (ResultSet rsAdmin = pstmtAdmin.executeQuery()) {
                return rsAdmin.next(); // Returns true if the result set has at least one row (i.e., valid user)
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Log the exception for debugging purposes
        }
        return false; // Return false in case of any exception
    }
}
