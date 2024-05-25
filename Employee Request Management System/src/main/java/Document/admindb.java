package main.java.Document;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admindb")
public class admindb extends HttpServlet {
	private static final long serialVersionUID = 1L;

    // Handles the POST request for user registration
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form parameters
    	String id = request.getParameter("id");
        String firstName = request.getParameter("firstname");
        String middleName = request.getParameter("middlename");
        String lastName = request.getParameter("lastname");	
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Database connection details
        String JDBC_DRIVER = "org.apache.derby.jdbc.EmbeddedDriver";
        String DB_URL = "jdbc:derby:C:\\Resquest;create=true";
        String USER = "cj";
        String PASS = "123";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Load JDBC driver and establish a database connection
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // Create SQL insert statement
            String sql = "INSERT INTO ADMINREGISTER (ID, FIRSTNAME, LASTNAME, MIDDLENAME, EMAIL, CONTACT, USERNAME, PASSWORD) " +
                         "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            // Prepare and execute the insert statement
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, firstName);
            pstmt.setString(3, lastName);
            pstmt.setString(4, middleName);
            pstmt.setString(5, email);
            pstmt.setString(6, contact);
            pstmt.setString(7, username);
            pstmt.setString(8, password);

            // Execute the insert statement
            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
                // Insert successful
                response.sendRedirect("Success.jsp");
            } else {
                // Insert failed
                response.sendRedirect("Error.jsp");
            }
        } catch (SQLException | ClassNotFoundException e) {
            // Handle database error, e.g., show an error message
            response.sendRedirect("Error2.jsp?error=Database error");
            e.printStackTrace(); // Log the exception for debugging purposes
        } finally {
            // Close resources in a finally block
            try {
                if (pstmt != null)
                    pstmt.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
}
