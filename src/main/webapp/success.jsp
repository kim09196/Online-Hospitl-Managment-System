<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Signup Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e7f9e7;
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
            color: #27ae60;
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
        <h1>Registration Successful!</h1>
        <p>Thank you for signing up. Your information has been saved successfully.</p>
        <a href="login_doc.jsp">Login Now</a>
    </div>
    <script>
        // Optional: You can add any JavaScript functionality here
        console.log("User has successfully signed up.");
    </script>
</body>
</html>
    