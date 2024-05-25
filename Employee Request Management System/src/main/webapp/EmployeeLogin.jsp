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
    <div class="container " style="margin-top:150px;">
        <div class="card text-center mb-3 mx-auto shadow-sm p-3 mb-5 bg-body-tertiary rounded" style="width: 30rem;">
            <div>
                <a href="AdminLogin.jsp" class="card-title" style="font-size:15px; float:right; margin-top:10px;">Admin</a>
            </div>
          <div class="card-body">
            
            <div>
                <h3 class="card-title" style="font-weight:bold; margin-bottom:20px;">EMPLOYEE LOGIN</h3>
            </div>
            
            <form action="employeelogin" method="post">
            
              <div class="mb-3 row">
                <label class="col-sm-4 col-form-label">Username:</label>
                <div class="col-sm-7">
                  <input type="text"  class="form-control" name="username" required>
                </div>
              </div>
              <div class="mb-3 row">
                <label class="col-sm-4 col-form-label">Password:</label>
                <div class="col-sm-7">
                  <input type="password" class="form-control" name="password" required>
                </div>
              </div>
              
              
              <div class="d-flex justify-content-center">
				<button type="submit" class="btn1 bg-color-white btn-primary" style="padding-top:.50rem; padding-bottom:.50rem; padding-left:1rem; padding-right:1rem;">Submit</button>
				    
			  </div>
              <div style="margin-top:10px; margin-bottom:20px;">
                  <a href="EmployeeRegister.jsp" class="card-title" style="font-size:15px;">new employee? click here</a>
              </div>
              
            </form>
            
            
          </div>
        </div>
    </div>  
</body>
</html>
