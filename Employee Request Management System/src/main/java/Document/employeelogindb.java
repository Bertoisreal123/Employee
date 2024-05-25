package main.java.Document;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/employeelogin")
public class employeelogindb extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String JDBC_URL = "jdbc:derby:C:\\Resquest;create=true";
    private static final String USER = "cj";
    private static final String PASS = "123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
       
        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

	        try (Connection conn = DriverManager.getConnection(JDBC_URL, USER, PASS)) {
	            String sql = "SELECT * FROM EMPLOYEEREGISTER WHERE username = ? AND password = ?";
	            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
	                stmt.setString(1, username);
	                stmt.setString(2, password);
	                try (ResultSet rs = stmt.executeQuery()) {
	                    if (rs.next()) {
	                        // Valid credentials, create a session and redirect to a different page
	                        HttpSession session = request.getSession();
	                        session.setAttribute("username", username);
	                        response.sendRedirect("RequestingForm.jsp");
	                    } else {
	                        // Invalid credentials, redirect back to login page with error message
	                        response.sendRedirect("EmployeeLogin.jsp?error=1");
	                    }
	                }
	            }
	        } catch (SQLException e) {
		        e.printStackTrace();
		        response.sendRedirect("Error2.jsp");
		    }
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Handle class loading exception
        }
	    
    }
}
