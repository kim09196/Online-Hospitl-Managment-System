<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Admin Dashboard</title>
  <!-- Custom CSS File -->
  <link rel="stylesheet" href="css/admin.css">
  <script>
    function validateForm(event) {
      event.preventDefault(); // Prevent the default form submission

      const email = document.getElementById('email').value;
      const password = document.getElementById('password').value;

      // Check if the email and password are correct
      if (email === 'admin@healthsync.com' && password === '1234567890') {
        // Redirect to Admin Dashboard if validation passes
        window.location.href = 'admin_dashboard.jsp'; // Adjust this to your actual dashboard file if needed
      } else {
        alert('Invalid email or password!');
      }
    }
  </script>
</head>
<body>
  <div class="container">
    <input type="checkbox" id="check">
    <div class="login form">
      <header>Login</header>
      <form onsubmit="validateForm(event)">
        <input type="email" id="email" placeholder="Email" required autocomplete="off">
        <input type="password" id="password" placeholder="Password" required autocomplete="off">
        <input type="submit" class="button" value="Login">
      </form>
    </div>
  </div>
</body>
</html>
