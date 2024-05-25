<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
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
	<div class="container" style="margin-top:50px;">
		
		  <div class="card shadow p-3 mb-5 bg-body-tertiary rounded">
		  
		   <div class="card-body">
		    <form action="employeedb" method="post">
		    
		    <h4 style="font-weight:bold; letter-spacing: 1px;">EMPLOYEE REGISTRATION FORM</h4>
		    
		    
		    <div class="form-group row" style="padding:.25rem;">
		      <label for="id" class="col-sm-2 col-form-label">Employee ID:</label>
		      <div class="col-sm-7">
		       <input type="text" class="form-control" name="id"
		        placeholder="Enter id" required>
		      </div>
		     </div>
		
		     <div class="form-group row" style="padding:.25rem;">
		      <label for="firstName" class="col-sm-2 col-form-label">First Name:</label>
		      <div class="col-sm-7">
		       <input type="text" class="form-control" name="firstname"
		        placeholder="Enter First name" required>
		      </div>
		     </div>
		     
		     <div class="form-group row" style="padding:.25rem;">
		      <label for="lastName" class="col-sm-2 col-form-label">Middle Name:</label>
		      <div class="col-sm-7">
		       <input type="text" class="form-control" name="middlename"
		        placeholder="Enter Middle name" required>
		      </div>
		     </div>
		
		     <div class="form-group row" style="padding:.25rem;">
		      <label for="lastName" class="col-sm-2 col-form-label">Last Name:</label>
		      <div class="col-sm-7">
		       <input type="text" class="form-control" name="lastname"
		        placeholder="Enter Last name" required>
		      </div>
		     </div>
		
		     <div class="form-group row" style="padding:.25rem;">
		      <label for="lastName" class="col-sm-2 col-form-label">Email Address:</label>
		      <div class="col-sm-7">
		       <input type="email" class="form-control" name="email"
		        placeholder="Enter Email Address" required>
		      </div>
		     </div>
		
		     <div class="form-group row" style="padding:.25rem;">
		      <label for="contact" class="col-sm-2 col-form-label">Contact No.:</label>
		      <div class="col-sm-7">
		       <input type="text" class="form-control" name="contact"
		        placeholder="Enter Contact Number" required>
		      </div>
		     </div>
		     
		     <hr style="max-width:auto">
		     <h4 style="font-weight:bold; letter-spacing: 1px;">LOGIN CREDENTIALS</h4>
		    
		     
		     <div class=" form-group row" style="padding:.25rem;">
		      <label for="lastName" class="col-sm-2 col-form-label">Username:</label>
		      <div class="col-sm-7">
		       <input type="text" class="form-control" name="username"
		        placeholder="Enter Username" required>
		      </div>
		     </div>
		
		     <div class="form-group row" style="padding:.25rem;">
		      <label for="lastName" class="col-sm-2 col-form-label">Password:</label>
		      <div class="col-sm-7">
		       <input type="password" class="form-control" name="password"
		        placeholder="Enter Password" required>
		      </div>
		     </div>
			
				<div class="d-flex">
				    <button type="submit" class="btn1 bg-color-white btn-primary" style="padding-top:.50rem; padding-bottom:.50rem; padding-left:1rem; padding-right:1rem;">Submit</button>
				    <a href="EmployeeLogin.jsp" class="card-title" style="font-size:15px; margin-left:auto;"><i class="bi bi-arrow-left-circle-fill h3"></i></a>
				</div>


		    </form>
		    
		   </div>
		  </div>
	 </div>
	 
	 
</body>
</html>