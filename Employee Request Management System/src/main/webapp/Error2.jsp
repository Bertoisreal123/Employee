<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            padding-top: 50px;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            margin: auto;
        }
        .error-message {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Error</h2>
        <p class="error-message">Error in the database.</p>
        <!-- You can add additional content or links here -->
        <a href="EmployeeLogin.jsp" class="btn1 bg-color-white btn-primary" style="margin-top:5px; padding-top:.50rem; padding-bottom:.50rem; padding-left:1.5rem; padding-right:1.5rem;">Go to Login</a>
    </div>
</body>
</html>