<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Signup Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9e7e7;
            color: #2c3e50;
            text-align: center;
            padding: 50px;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #c0392b;
        }
        a {
            color: #2980b9;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registration Error</h1>
        <p>Oops! Something went wrong while processing your registration. Please try again later.</p>
        <a href="Register_doc.jsp">Go Back to Signup</a>
    </div>
    <script>
        // Optional: You can add any JavaScript functionality here
        console.log("Error during signup process.");
    </script>
</body>
</html>
