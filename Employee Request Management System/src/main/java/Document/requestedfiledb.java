package main.java.Document;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/requestedfiledb")
public class requestedfiledb extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String JDBC_DRIVER = "org.apache.derby.jdbc.EmbeddedDriver";
    private static final String DB_URL = "jdbc:derby:C:/Request;create=true";
    private static final String DB_USERNAME = "cj";
    private static final String DB_PASSWORD = "123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String firstname = request.getParameter("firstname");
        String middlename = request.getParameter("middlename");
        String lastname = request.getParameter("lastname");
        String department = request.getParameter("department");
        String requestingfile = request.getParameter("requestingfile");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName(JDBC_DRIVER);

            conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            String sql = "INSERT INTO requestedfile (id, firstname, middlename, lastname, department, requestingfile) VALUES (?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, id);
            stmt.setString(2, firstname);
            stmt.setString(3, middlename);
            stmt.setString(4, lastname);
            stmt.setString(5, department);
            stmt.setString(6, requestingfile);

            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected > 0) {
                response.sendRedirect("Success.jsp");
            } else {
                response.sendRedirect("Error.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("Error2.jsp");
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close(); // Close the connection here
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }



	    private List<RequestedFile> fetchRequestedFile() {
	        List<RequestedFile> requestedFiles = new ArrayList<>();
	        String JDBC_DRIVER = "org.apache.derby.jdbc.EmbeddedDriver";
	        String DB_URL = "jdbc:derby:C:/Request;create=true";
	        String dbUsername = "cj"; // Provide your database username
	        String dbPassword = "123"; // Provide your database password
	        Connection conn = null;
	        PreparedStatement stmt = null;
	        ResultSet rs = null;
	
	        try {
	            Class.forName(JDBC_DRIVER);
	            conn = DriverManager.getConnection(DB_URL, dbUsername, dbPassword);
	            String sql = "SELECT * FROM requestedfile";
	            stmt = conn.prepareStatement(sql);
	            rs = stmt.executeQuery();
	
	            while (rs.next()) {
	                RequestedFile requestedFile = new RequestedFile();
	                requestedFile.setId(rs.getString("id"));
	                requestedFile.setFirstName(rs.getString("firstname"));
	                requestedFile.setMiddleName(rs.getString("middlename"));
	                requestedFile.setLastName(rs.getString("lastname"));
	                requestedFile.setDepartment(rs.getString("department"));
	                requestedFile.setRequestingFile(rs.getString("requestingfile"));
	                requestedFiles.add(requestedFile);
	            }
	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (rs != null) {
	                    rs.close();
	                }
	                if (stmt != null) {
	                    stmt.close();
	                }
	                if (conn != null) {
	                    conn.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	
	        return requestedFiles;
	    }
	}
