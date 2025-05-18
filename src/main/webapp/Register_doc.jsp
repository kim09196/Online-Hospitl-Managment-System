<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <title>Health Sync</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/Dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
<header>
    <div class="header-top-bar">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <ul class="top-bar-info list-inline-item pl-0 mb-0">
                        <li class="list-inline-item"><a href="mailto:support@gmail.com"><i class="icofont-support-faq mr-2"></i>support@HealthSync.com</a></li>
                        <li class="list-inline-item"><i class="icofont-location-pin mr-2"></i>Address No,134/A, Colombo, Sri Lanka</li>
                    </ul>
                </div>
                <div class="col-lg-6">
                    <div class="text-lg-right top-right-bar mt-2 mt-lg-0">
                        <a href="tel:+23-345-67890">
                            <span>Call Now : </span>
                            <span class="h4">+94-11-222-34-567</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="main-wrapper account-wrapper">
    <div class="account-page">
        <div class="account-center">
            <div class="account-box">
                <form action="SignupServlet" method="post" class="form-signin" autocomplete="off" onsubmit="return validateEmail()">
                    <div class="account-logo">
                        <a href="#">
                            <img src="images/logo.png" style="width: 50%; height: auto; max-width: 200px;" alt="Logo">
                        </a>
                    </div>
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control input-with-icon" placeholder="Enter Name" name="name" autocomplete="off" required>
                    </div>
                    <div class="form-group">
                        <label>Specialization</label>
                        <input type="text" class="form-control input-with-icon" placeholder="Enter Specialization" name="specialization" autocomplete="off" required>
                    </div>
                    <div class="form-group">
                        <label>Contact Number</label>
                        <input type="text" class="form-control input-with-icon" placeholder="Enter Contact Number" name="contact_number" autocomplete="off" required>
                    </div>
                    <div class="form-group">
                        <label>Email Address</label>
                        <input type="email" id="email" class="form-control input-with-icon" placeholder="Enter Email" name="email" autocomplete="off" required>
                        <div id="emailError" class="text-danger" style="display: none;">Invalid email format.</div>
                    </div>
                    <div class="form-group">
                        <label>Experience</label>
                        <input type="text" class="form-control input-with-icon" placeholder="Enter Experience" name="experience" autocomplete="off" required>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control input-with-icon" placeholder="Enter Password" name="password" autocomplete="off" required>
                    </div>
                    <div class="form-group checkbox">
                        <label>
                            <input type="checkbox" required> I have read and agree to the Terms and Conditions
                        </label>
                    </div>
                    <div class="form-group text-center">
                        <button class="btn btn-primary account-btn" type="submit">Signup</button>
                    </div>
                    <div class="text-center login-link">
                        Already have an account? <a href="login_doc.jsp">Login</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
function validateEmail() {
    const emailInput = document.getElementById('email');
    const emailError = document.getElementById('emailError');
    const email = emailInput.value;

    // Check if the email ends with @doc.com
    if (!email.endsWith('@doc.com')) {
        emailError.style.display = 'block'; // Show error message
        emailInput.focus();
        return false; // Prevent form submission
    } else {
        emailError.style.display = 'none'; // Hide error message
    }

    return validateFields(); // Call the field validation function
}

function validateFields() {
    const name = document.querySelector('input[name="name"]').value;
    const specialization = document.querySelector('input[name="specialization"]').value;
    const contactNumber = document.querySelector('input[name="contact_number"]').value;
    const experience = document.querySelector('input[name="experience"]').value;
    const password = document.querySelector('input[name="password"]').value;
    const termsCheckbox = document.querySelector('input[type="checkbox"]');

    // Reset any previous error messages
    resetErrors();

    let isValid = true;

    if (name.trim() === '') {
        alert('Name is required.');
        isValid = false;
    }
    if (specialization.trim() === '') {
        alert('Specialization is required.');
        isValid = false;
    }
    if (contactNumber.trim() === '' || !/^\d+$/.test(contactNumber)) {
        alert('Valid contact number is required.');
        isValid = false;
    }
    if (experience.trim() === '') {
        alert('Experience is required.');
        isValid = false;
    }
    if (password.trim().length < 6) {
        alert('Password must be at least 6 characters long.');
        isValid = false;
    }
    if (!termsCheckbox.checked) {
        alert('You must agree to the Terms and Conditions.');
        isValid = false;
    }

    return isValid;
}

function resetErrors() {
    // Reset the display of the email error message
    document.getElementById('emailError').style.display = 'none';
}
</script>
</body>
</html>
