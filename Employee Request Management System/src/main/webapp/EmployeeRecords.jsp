<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Document Request Management System</title> 


<link rel="stylesheet" href="style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body style="font-family: 'Poppins';">
	<div class="container " style="margin-top:50px;">
		<div>
		  	<a href="EmployeeLogin.jsp" class="card-title" style="font-size:15px; float:right;"><i class="bi bi-box-arrow-left h2" style="color:red;"></i></a>
		</div>
		<div  class="text-start h4 d-flex">
			<a href="EmployeeRecords.jsp" class="text-secondary-emphasis" style="margin-bottom:20px; font-weight:bold; letter-spacing:2px; text-decoration:none;">Employee Records</a>
			<h4  style="margin-bottom:20px; margin-left:10px; margin-right:10px; font-weight:bold; letter-spacing:2px;">|</h4>
			<a href="RequestedDocuments.jsp" class="text-secondary-emphasis" style="margin-bottom:20px; font-weight:bold; letter-spacing:2px; ">Employees Requested Document</a>
		</div>
		<div class="card shadow" style="padding:25px;">
			
			<%
		        String username = (String) session.getAttribute("username");
		        Connection conn = null;
		        PreparedStatement pstmt = null;
		        ResultSet rs = null;
		        try {
		            // Database connection details
		            String JDBC_DRIVER = "org.apache.derby.jdbc.EmbeddedDriver";
		            String DB_URL = "jdbc:derby:C:\\Resquest;create=true";
		            String USER = "cj";
		            String PASS = "123";
		
		            // Register JDBC driver and open a connection
		            Class.forName(JDBC_DRIVER);
		            conn = DriverManager.getConnection(DB_URL, USER, PASS);
		
		            // SQL query to select user information based on the username
		            String sql = "SELECT * FROM EMPLOYEEREGISTER WHERE USERNAME=?";
		            pstmt = conn.prepareStatement(sql);
		            pstmt.setString(1, username);
		            rs = pstmt.executeQuery();
		
		            // If user information is found, display it in a table
		            if (rs.next()) {
		            	String fetchedId = rs.getString("ID");
		                String fetchedFirstName = rs.getString("FIRSTNAME");
		                String fetchedMiddleName = rs.getString("MIDDLENAME");
		                String fetchedLastName = rs.getString("LASTNAME");
		                String fetchedEmail = rs.getString("EMAIL");
		                String fetchedContact = rs.getString("CONTACT");
		                String fetchedUsername = rs.getString("USERNAME");
		                String fetchedPassword = rs.getString("PASSWORD");
		    %>
		
		
			<table class="table table-striped">
				<thead class="">
					<tr>
				      <th scope="col">ID</th>
				      <th scope="col">First Name</th>
				      <th scope="col">Middle Name</th>
				      <th scope="col">Last Name</th>
				      <th scope="col">Email Address</th>
				      <th scope="col">Contact No</th>
				      <th scope="col">Username</th>
				      <th scope="col">Password</th>
				    </tr>
				</thead>
				<tbody class="table-group-divider">
		                <tr>
		                    <td><%= fetchedId %></td>
		                    <td><%= fetchedFirstName %></td>
		                    <td><%= fetchedMiddleName %></td>
		                    <td><%= fetchedLastName %></td>
		                    <td><%= fetchedEmail %></td>
		                    <td><%= fetchedContact %></td>
		                    <td><%= fetchedUsername %></td>
		                    <td><%= fetchedPassword %></td>
		                </tr>
				</tbody>
			</table>
			
			<% } // End of if statement
		       } catch (SQLException | ClassNotFoundException e) {
		           e.printStackTrace();
		       } finally {
		           // Close resources in a finally block
		           try {
		               if (rs != null) rs.close();
		               if (pstmt != null) pstmt.close();
		               if (conn != null) conn.close();
		           } catch (SQLException se) {
		               se.printStackTrace();
		           }
		       }
		    %>
		</div>
	</div>	
</body>
</html>