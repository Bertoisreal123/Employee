<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		    <form action="requestedfiledb" method="post">
			    <div class="d-flex">
				    <h4 style="font-weight:bold; letter-spacing: 1px;">REQUESTING DOCUMENT FORM</h4>
				    <a href="EmployeeLogin.jsp" class="card-title" style="font-size:15px; margin-left:auto;"><i class="bi bi-box-arrow-left h2" style="color:red;"></i></a>
				</div>
				
			<div class="form-group row" style="padding:.25rem;">
			      <label for="employeeid" class="col-sm-2 col-form-label">Employee ID:</label>
			      <div class="col-sm-7">
			       <input type="text" class="form-control" name="id"
			        placeholder="Enter id" required>
			      </div>
		     </div>
			
		     <div class="form-group row" style="padding:.25rem;">
		      <label for="firtname" class="col-sm-2 col-form-label">First Name:</label>
		      <div class="col-sm-7">
		       <input type="text" class="form-control" name="firstname"
		        placeholder="Enter First name" required>
		      </div>
		     </div>
		     
		     <div class="form-group row" style="padding:.25rem;">
		      <label for="middlename" class="col-sm-2 col-form-label">Middle Name:</label>
		      <div class="col-sm-7">
		       <input type="text" class="form-control" name="middlename"
		        placeholder="Enter Middle name" required>
		      </div>
		     </div>
		
		     <div class="form-group row" style="padding:.25rem;">
		      <label for="lastname" class="col-sm-2 col-form-label">Last Name:</label>
		      <div class="col-sm-7">
		       <input type="text" class="form-control" name="lastname"
		        placeholder="Enter Last name" required>
		      </div>
		     </div>
		
		     <div class="form-group row" style="padding:.25rem;">
		      <label for="department" class="col-sm-2 col-form-label">Department:</label>
		      <div class="col-sm-7">
		       <input type="text" class="form-control" name="department"
		        placeholder="Enter Department" required>
		      </div>
		     </div>
		
		     <div class="form-group row" style="padding:.25rem;">
		      <label for="requestingfile" class="col-sm-2 col-form-label">Requesting File:</label>
		      <div class="col-sm-7">
		       <input type="text" class="form-control" name="requestingfile"
		        placeholder="Enter Requesting File" required>
		      </div>
		     </div>
		     
			 <div class="d-flex">
    		<button type="button" id="submitBtn" class="btn1 bg-color-white btn-primary" style="padding-top:.50rem; padding-bottom:.50rem; padding-left:1rem; padding-right:1rem;">Submit</button>
</div>

<script>
    // Add event listener to submit button
    document.getElementById("submitBtn").addEventListener("click", function() {
        // Redirect to the target page
        window.location.href = "Success.jsp";
    });
</script>
			     
		    </form>
		    
		    
		   </div>
		  </div>
	 </div>
	 
	 
</body>
</html>