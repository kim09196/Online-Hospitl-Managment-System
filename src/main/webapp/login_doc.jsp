<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <title>Health Sync</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/Dashboard.css">
</head>

<body>
    <div class="main-wrapper account-wrapper">
        <div class="account-page">
            <div class="account-center">
                <div class="account-box">
                   <form action="LoginServlet" method="post" class="form-signin" onsubmit="return validateLogin()">
                        <div class="account-logo text-center">
                            <a href="#">
                                <img src="images/logo.png" style="width: 50%; height: auto; max-width: 200px;" alt="Logo">
                            </a>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" id="loginEmail" class="form-control input-with-icon" placeholder="Enter Your E-mail Address" 
                                   name="email" required>
                            <div id="loginEmailError" class="text-danger" style="display: none;">Invalid email format.</div>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" id="loginPassword" class="form-control input-with-icon" placeholder="Enter Password" name="password" required>
                        </div>
                        <div class="form-group text-right">
                            <a href="forgot-password.html">Forgot your password?</a>
                        </div>
                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-primary account-btn">Login</button>
                        </div>
                        <div class="text-center register-link">
                            Don’t have an account? <a href="Register_doc.jsp">Register Now</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
<script>
function validateLogin() {
    const emailInput = document.getElementById('loginEmail');
    const emailError = document.getElementById('loginEmailError');
    const email = emailInput.value;
    const password = document.getElementById('loginPassword').value;

    // Reset previous error messages
    emailError.style.display = 'none';

    // Validate email
    if (!email.endsWith('@doc.com')) {
        emailError.style.display = 'block'; // Show error message
        emailInput.focus();
        return false; // Prevent form submission
    }

    // Validate password
    if (password.trim() === '') {
        alert('Password is required.');
        return false; // Prevent form submission
    }

    return true; // Allow form submission
}
</script>
</body>
</html>
