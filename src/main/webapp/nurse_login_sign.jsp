<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login and Sign-Up Form</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      background: #f5f5f5;
    }

    .container {
      width: 320px;
      padding: 20px;
      background: #fff;
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
      border-radius: 10px;
    }

    .form-box {
      position: relative;
    }

    .input-group {
      display: flex;
      flex-direction: column;
    }

    h2 {
      text-align: center;
      margin-bottom: 20px;
    }

    .input-field {
      height: 40px;
      margin: 10px 0;
      padding: 0 10px;
      border-radius: 5px;
      border: 1px solid #ccc;
      font-size: 16px;
    }

    .submit-btn {
      height: 40px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
      margin-top: 10px;
    }

    .submit-btn:hover {
      background-color: #45a049;
    }

    .toggle-form {
      text-align: center;
      margin-top: 10px;
    }

    .hidden {
      display: none;
    }

    .error-message {
      color: red;
      font-size: 14px;
      display: none;
      text-align: center;
      margin-bottom: 10px;
    }

    a {
      color: #4CAF50;
      text-decoration: none;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="form-box">
      <!-- Login Form -->
      <form id="login-form" class="input-group" action="#" method="#" onsubmit="return validateLogin(event)">
        <h2>Nurse Login</h2>
        <input type="email" id="login-email" class="input-field" name="email" placeholder="Email" required>
        <input type="password" id="login-password" class="input-field" name="password" placeholder="Password" required>
        <p id="login-error" class="error-message">Email must end with @nur.com</p>
        <a href="nurse_dashboard.jsp" id="show-signup"><button type="submit" class="submit-btn">Login</button></a>
        <p class="toggle-form">Don't have an account? <a href="#" id="show-signup">Sign Up</a></p>
      </form>

      <!-- Sign-Up Form -->
      <form id="signup-form" class="input-group hidden" action="#" method="#" onsubmit="return validateSignup(event)">
        <h2>Nurse Sign Up</h2>
        <input type="text" id="signup-username" class="input-field" name="username" placeholder="Username" required>
        <input type="email" id="signup-email" class="input-field" name="email" placeholder="Email" required>
        <input type="password" id="signup-password" class="input-field" name="password" placeholder="Password" required>
        <input type="password" id="signup-confirm-password" class="input-field" name="confirm_password" placeholder="Confirm Password" required>
        <p id="signup-error" class="error-message">Email must end with @nur.com</p>
        <p id="password-error" class="error-message">Passwords do not match or too weak</p>
        <a href="nurse_dashboard.jsp" id="show-signup"><button type="submit" class="submit-btn">Sign Up</button></a>
        <p class="toggle-form">Already have an account? <a href="nurse_dashboard.jsp" id="show-login">Login</a></p>
      </form>
    </div>
  </div>

  <script>
    const loginForm = document.getElementById('login-form');
    const signupForm = document.getElementById('signup-form');
    const showSignupLink = document.getElementById('show-signup');
    const showLoginLink = document.getElementById('show-login');

    showSignupLink.addEventListener('click', function() {
      loginForm.classList.add('hidden');
      signupForm.classList.remove('hidden');
    });

    showLoginLink.addEventListener('click', function() {
      signupForm.classList.add('hidden');
      loginForm.classList.remove('hidden');
    });

    function validateLogin(event) {
      const emailInput = document.getElementById('login-email').value;
      const errorMessage = document.getElementById('login-error');
      if (!emailInput.endsWith('@nur.com')) {
        errorMessage.style.display = 'block';
        event.preventDefault();
        return false;
      } else {
        errorMessage.style.display = 'none';
        return true;
      }
    }

    function validateSignup(event) {
      const emailInput = document.getElementById('signup-email').value;
      const password = document.getElementById('signup-password').value;
      const confirmPassword = document.getElementById('signup-confirm-password').value;
      const emailError = document.getElementById('signup-error');
      const passwordError = document.getElementById('password-error');
      
      let valid = true;

      if (!emailInput.endsWith('@nur.com')) {
        emailError.style.display = 'block';
        valid = false;
      } else {
        emailError.style.display = 'none';
      }

      if (password !== confirmPassword || password.length < 6) {
        passwordError.style.display = 'block';
        valid = false;
      } else {
        passwordError.style.display = 'none';
      }

      if (!valid) {
        event.preventDefault();
      }

      return valid;
    }
  </script>
</body>
</html>
