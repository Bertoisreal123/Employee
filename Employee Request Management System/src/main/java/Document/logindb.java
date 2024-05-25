package main.java.Document;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logindb")
public class logindb extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handles the POST request for user login
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form parameters
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validate the credentials against the database
        boolean isValidUser = dbconn.isValidUser(username, password);

        if (isValidUser) {
            // Create a session and store user information
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            // Redirect to the user information page
            response.sendRedirect("RequestingForm.jsp");
        } else {
            // Additional login check
            boolean isValidCustomer = dbconn.isValidUser(username, password);

            if (isValidCustomer) {
                // Create a session and store user information
                HttpSession session = request.getSession();
                session.setAttribute("username", username);

                // Redirect to the user information page
                response.sendRedirect("EmployeeRecords.jsp");
            } else {
                // Show an error message and redirect to the login error page
                request.setAttribute("error", "Invalid Username or Password. Please Try Again.");
                request.getRequestDispatcher("Error.jsp").forward(request, response);
            }
        }
    }
}
